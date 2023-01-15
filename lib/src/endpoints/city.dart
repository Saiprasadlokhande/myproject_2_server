import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/city.dart';
import 'package:serverpod/serverpod.dart';

class CityEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addCity(Session session, City city) async {
    bool val = await helper.addCity(session, city);
    if (val) {
      return successResponse("City ${city.city} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${city.city} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getCity(Session session, int districtId,
      {String? keyword}) async {
    List<City> list = [];
    list = helper.getCity(session, districtId, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateCity(Session session, City city) async {
    bool result = await helper.updateCity(session, city);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteCity(Session session, int id) async {
    int result = await helper.deleteCity(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
