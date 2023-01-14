import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StateEndpoint extends Endpoint {
  Future<bool> addState(Session session, States state) async {
    await States.insert(session, state);
    return true;
  }

  Future<List<States>> getState(Session session, int countryId,
      {String? keyword}) async {
    return await States.find(session,
        where: (t) => keyword != null
            ? t.state.like(keyword)
            : Constant(true) & t.countryId.equals(countryId));
  }

  Future<bool> updateState(Session session, States state) async {
    bool result = await States.update(session, state);
    return result;
  }

  Future<bool> deleteState(Session session, int id) async {
    int result = await States.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
