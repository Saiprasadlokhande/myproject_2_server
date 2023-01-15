import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/area.dart';
import 'package:serverpod/serverpod.dart';

class AreaEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addArea(Session session, Area area) async {
    bool val = await helper.addArea(session, area);
    if (val) {
      return successResponse("Area ${area.area} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${area.area} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getArea(Session session, int districtId,
      {String? keyword}) async {
    List<Area> list = [];
    list = helper.getArea(session, districtId, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateArea(Session session, Area area) async {
    bool result = await helper.updateArea(session, area);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteArea(Session session, int id) async {
    int result = await helper.deleteArea(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
