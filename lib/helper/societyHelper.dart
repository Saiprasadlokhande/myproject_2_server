import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SocietyHelper {
  createSocietyRoom(Session session, Society society) async {
    try {
      for (int i = 0; i < society.totalBlock; i++) {
        for (int j = 0; j < society.totalFloor[i]; j++) {
          for (int k = 0; k < society.maxRoomsEachFloor[i]; k++) {
            String room = "${String.fromCharCode(65 + i)} - ${j}0${k + 1}";
            int roomNo = 0;
            if (k <= 9) {
              roomNo = int.parse("${j}0${k + 1}");
              print("${String.fromCharCode(65 + i)} - ${j}0${k + 1}");
            } else {
              roomNo = int.parse("${j}0${k + 1}");
            }
            await Rooms.insert(
                session,
                Rooms(
                  socId: society.id!,
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
                  // ownerId: 0,
                  // membersId: [],
                  // rentalId: []
                ));
          }
        }
      }
    } catch (e) {
      print("SocietyHelper --> createSocietyRoom --> $e");
    }
  }
}
