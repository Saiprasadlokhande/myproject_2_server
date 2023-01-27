import 'package:myproject_2_server/src/generated/area.dart';
import 'package:serverpod/serverpod.dart';

class AreaEndpoint extends Endpoint {
  Future<bool> addArea(Session session, Area area) async {
    List<Area> arealist = await getArea(session, area.cityId);
    int i = arealist.length;

    if (i == 0) {
      await Area.insert(session, area);
      return true;
    } else {
      return false;
    }
  }

  Future<List<Area>> getArea(Session session, int areaId,
      {String? keyword}) async {
    return await Area.find(session,
        where: (t) => keyword != null
            ? t.area.like(keyword)
            : Constant(true) & t.cityId.equals(areaId));
  }

  Future<bool> updateArea(Session session, Area area) async {
    bool result = await Area.update(session, area);
    return result;
  }

  Future<bool> deleteArea(Session session, int id) async {
    int result = await Area.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }

  Future<int> findArea(Session session, int areaId) async {
    List<Area> areaList =
        await Area.find(session, where: (t) => t.id.equals(areaId));
    return areaList.length;
  }
}
