import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/country.dart';
import 'package:serverpod/serverpod.dart';

class CountryEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addCountry(Session session, Country country) async {
    bool val = await helper.addCountry(session, country);
    if (val) {
      return successResponse(
          "Country ${country.country} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${country.country} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getCountry(Session session, {String? keyword}) async {
    List<Country> list = [];
    list = helper.getCountry(session);
    return successResponse(list);
  }

  Future<ResponseBody> updateCountry(Session session, Country country) async {
    bool result = await helper.updateCountry(session, country);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteCountry(Session session, int id) async {
    int result = await helper.deleteCountry(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
