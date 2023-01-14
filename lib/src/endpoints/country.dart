import 'package:myproject_2_server/src/generated/country.dart';
import 'package:serverpod/serverpod.dart';

class CountryEndpoint extends Endpoint {
  Future<bool> addCountry(Session session, Country country) async {
    await Country.insert(session, country);
    return true;
  }

  Future<List<Country>> getCountry(Session session, {String? keyword}) async {
    List<Country> list = [];
    list = await Country.find(session,
        where: (t) =>
            keyword != null ? t.country.like('%$keyword%') : Constant(true));
    return list;
  }

  Future<bool> updateCountry(Session session, Country country) async {
    bool result = await Country.update(session, country);
    return result;
  }

  Future<bool> deleteCountry(Session session, int id) async {
    int result = await Country.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
