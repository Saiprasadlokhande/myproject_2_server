import 'package:myproject_2_server/helper/societyHelper.dart';
import 'package:myproject_2_server/src/generated/address.dart';
import 'package:myproject_2_server/src/generated/society.dart';
import 'package:serverpod/serverpod.dart';

import '../generated/rooms.dart';

class SocietyEndpoint extends Endpoint {
  Future<bool> addSociety(Session session, Society society) async {
    List<Society> list = await Society.find(session,
        where: (p0) => p0.socRegNo.equals(society.socRegNo));
    if (list.isEmpty) await Society.insert(session, society);
    Society? data = await Society.findSingleRow(session,
        where: (p0) => p0.socRegNo.equals(society.socRegNo));
    if (data != null) {
      for (int i = 0; i < society.totalBlock; i++) {
        for (int j = 0; j <= society.totalFloor[i]; j++) {
          for (int k = 0; k < society.maxRoomsEachFloor[i]; k++) {
            String room = "${String.fromCharCode(65 + i)} - ${j}0${k + 1}";
            int roomNo = 0;
            // if (k <= 9) {
            roomNo = int.parse("${j}0${k + 1}");
            // } else {
            //   roomNo = int.parse("${j}${k + 1}");
            // }
            await Rooms.insert(
                session,
                Rooms(
                  socId: data.id!,
                  room: room,
                  roomNo: roomNo,
                  owner: "",
                  onRent: false,
                  onSale: false,
                  carpetArea: 0,
                  roomStructure: "",
                  balcony: false,
                  isOccupied: false,
                  totalMembers: 0,
                  roomExist: false,
                ));
          }
        }
      }
      return true;
    }
    return false;
  }

  Future<List<Society>> getSociety(Session session, {String? keyword}) async {
    List<Society> list = await Society.find(session,
        where: (t) =>
            (keyword != null ? t.socName.ilike('%$keyword%') : Constant(true)));

    if (list.isNotEmpty) {
      int length = list.length > 8 ? 8 : list.length;
      print("Society Length : ${list.length}");
      for (int i = 0; i < length; i++) {
        list[i].address = (await Address.findSingleRow(session,
            where: (data) => data.id.equals(list[i].socAddressId)))!;

        list[i].rooms = (await Rooms.find(session,
            where: (data) => data.socId.equals(list[i].id)));
      }
    }
    return list;
  }

  Future<bool> updateSociety(Session session, Society society) async {
    bool result = await Society.update(session, society);
    return result;
  }

  Future<bool> deleteSociety(Session session, int id) async {
    int result = await Society.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
