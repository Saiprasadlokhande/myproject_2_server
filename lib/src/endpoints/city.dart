import 'package:myproject_2_server/src/generated/city.dart';
import 'package:serverpod/serverpod.dart';

class CityEndpoint extends Endpoint {
  Future<bool> addCity(Session session, City city) async {
    List<City> citylist = await getAllCity(session, city.districtId);
    int i = citylist.length;

    if (i == 0) {
      await City.insert(session, city);
      return true;
    } else {
      return false;
    }
  }

  Future<List<City>> getAllCity(Session session, int districtId,
      {String? keyword}) async {
    return await City.find(session,
        where: (t) => keyword != null
            ? t.city.like(keyword)
            : Constant(true) & t.districtId.equals(districtId));
  }

  Future<bool> updateCity(Session session, City city) async {
    bool result = await City.update(session, city);
    return result;
  }

  Future<bool> deleteCity(Session session, int id) async {
    int result = await City.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }

//   Future<List<List<dynamic>>> getAllCity(Session session, int areaId,
//       {String? keyword}) async {
//     // return await City.find(session,
//     //     where: (t) => keyword != null ? t.city.like(keyword) : Constant(true));
// var result = await session.db.query('query') ; }
}
