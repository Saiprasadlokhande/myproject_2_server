import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RoomsEndpoint extends Endpoint {
  Future<List<Rooms>> getRooms(Session session, {String? keyword}) async {
    return await Rooms.find(session,
        where: (t) =>
            keyword != null ? t.room.ilike('%$keyword%') : Constant(true));
  }

  Future<bool> addRooms(Session session, Rooms rooms) async {
    await Rooms.insert(session, rooms);
    return true;
  }

  Future<bool> updateRooms(Session session, Rooms room) async {
    bool result = await Rooms.update(session, room);
    return result;
  }

  Future<bool> deleteRooms(Session session, int id) async {
    var result = await Rooms.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
