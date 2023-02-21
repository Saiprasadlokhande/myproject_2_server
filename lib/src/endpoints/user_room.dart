import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserRoomEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;
  Future<List<UserRoom>> getUserRoom(Session session) async {
    int? userId = await session.auth.authenticatedUserId;
    List<UserRoom> userRoomList = [];
    userRoomList = await UserRoom.find(session,
        where: (t) =>
            (t.userId.equals(userId) & t.userRoomStatus.equals(true)));
    for (int i = 0; i < userRoomList.length; i++) {
      Rooms? rooms = await Rooms.findById(session, userRoomList[i].roomId);
      userRoomList[i].roomDetails = rooms;
    }
    return userRoomList;
  }

  Future<bool> sendRequestToJoinRoom(Session session,
      {required int roomId}) async {
    try {
      Rooms? room = await Rooms.findById(session, roomId);
      int? userId = await session.auth.authenticatedUserId;
      UserRoom userRoom = UserRoom(
          socId: room!.socId,
          userId: userId!,
          roomId: room.id!,
          fromDate: DateTime.now(),
          isOwner: false,
          isResident: false,
          isRental: false,
          userRoomStatus: false);
      await UserRoom.insert(session, userRoom);
      return true;
    } catch (e) {
      return false;
    }
  }

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

  Future<bool> addUserRoom(Session session, UserRoom rooms) async {
    await UserRoom.insert(session, rooms);
    return true;
  }

  Future<bool> updateUserRoom(Session session, UserRoom room) async {
    bool result = await UserRoom.update(session, room);
    return result;
  }

  Future<bool> deleteUserRooms(Session session, int id) async {
    var result = await UserRoom.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }

  Future<bool> deleteUserRoomsss(Session session, int id) async {
    var result = await UserRoom.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
