import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StateEndpoint extends Endpoint {
  Future<bool> addState(Session session, States state) async {
    List<States> statelist = await getState(session, state.countryId);
    int i = statelist.length;

    if (i == 0) {
      await States.insert(session, state);
      return true;
    } else {
      return false;
    }
  }

  Future<List<States>> getState(Session session, int countryId,
      {String? keyword}) async {
    return await States.find(session,
        where: (t) => keyword != null
            ? t.countryId.equals(countryId) & t.state.ilike('%$keyword%')
            : Constant(true));
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
