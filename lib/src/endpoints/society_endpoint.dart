import 'package:myproject_2_server/src/generated/society.dart';
import 'package:serverpod/serverpod.dart';

class SocietyEndpoint extends Endpoint {
  Future<bool> addSociety(Session session, Society society) async {
    await Society.insert(session, society);
    return true;
  }

  Future<List<Society>> getSociety(Session session, {String? keyword}) async {
    return await Society.find(session,
        where: (t) =>
            (keyword != null ? t.socName.ilike('%$keyword%') : Constant(true)));
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
