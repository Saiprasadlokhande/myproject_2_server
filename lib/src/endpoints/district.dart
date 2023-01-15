import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/district.dart';
import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DistrictEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addDistrict(Session session, District district) async {
    bool val = await helper.addDistrict(session, district);
    if (val) {
      return successResponse(
          "District ${district.district} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${district.district} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getDistrict(Session session, int countryId,
      {String? keyword}) async {
    List<States> list = [];
    list = helper.getDistrict(session, countryId, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateDistrict(
      Session session, District district) async {
    bool result = await helper.updateDistrict(session, district);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteDistrict(Session session, int id) async {
    int result = await helper.deleteDistrict(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
