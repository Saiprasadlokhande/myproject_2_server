import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class RoomMembersEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<bool> updateRequestToJoinRoom(
      Session session, int userRoomId, bool status) async {
    try {
      UserRoom? userRoom = await UserRoom.findById(session, userRoomId);
      bool val = await UserRoom.update(session, userRoom!);
      return val;
    } catch (e) {
      return false;
    }
  }

  Future<bool> addMembersToShop(Session session, Members member) async {
    return false;
  }

  Future<List<Members?>> getUserRoomMembers(Session session,
      {required int roomId}) async {
    List<UserRoom> userRoomList = [];
    userRoomList =
        await UserRoom.find(session, where: (t) => (t.roomId.equals(roomId)));
    List<Members?> membersList = [];
    for (int i = 0; i < userRoomList.length; i++) {
      Members? member = await Members.findById(session, userRoomList[i].userId);
      if (member != null) {
        membersList.add(member);
      }
    }

    return membersList;
  }

  Future<bool> updateMembersDetails(Session session, Members member) async {
    bool val = await Members.update(session, member);
    return val;
  }

  // Future<bool> updateMembersKYCStatus(Session session, Members member) async {}

  Future<bool> deleteMembersFromRoom(Session session, UserRoom userRoom) async {
    bool val = await UserRoom.update(session, userRoom);
    return val;
  }

  Future<List<UserRoom?>> findMembers(Session session,
      {String? searchString}) async {
    List<Members> findMembersList = [];
    List<UserRoom?> userRoomList = [];
    findMembersList =
        await Members.find(session, where: (t) => t.name.equals(searchString));
    for (int i = 0; i < findMembersList.length; i++) {
      UserRoom? userRoom =
          await UserRoom.findById(session, findMembersList[i].id!);
      if (userRoom != null) {
        userRoomList.add(userRoom);
      }
    }
    return userRoomList;
  }
}
