import 'package:myproject_2_server/src/generated/district.dart';
import 'package:serverpod/serverpod.dart';

class DistrictEndpoint extends Endpoint {
  Future<bool> addDistrict(Session session, District district) async {
    List<District> districtlist = await getDistrict(session, district.stateId);
    int i = districtlist.length;

    if (i == 0) {
      await District.insert(session, district);
      return true;
    } else {
      return false;
    }
    await District.insert(session, district);
    return true;
  }

  Future<List<District>> getDistrict(Session session, int districtId,
      {String? keyword}) async {
    return await District.find(session,
        where: (t) => keyword != null
            ? t.district.ilike('%$keyword%')
            : Constant(true) & t.stateId.equals(districtId));
  }

  Future<bool> updateDistrict(Session session, District district) async {
    bool result = await District.update(session, district);
    return result;
  }

  Future<bool> deleteDistrict(Session session, int id) async {
    int result = await District.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
