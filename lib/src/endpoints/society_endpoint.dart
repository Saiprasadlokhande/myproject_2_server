import 'package:myproject_2_server/helper/societyHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/society.dart';
import 'package:serverpod/serverpod.dart';

class SocietyEndpoint extends Endpoint {
  SocietyHelper helper = SocietyHelper();
  Future<ResponseBody> addSociety(Session session, Society society) async {
    bool val = await helper.addSociety(session, society);
    if (val) {
      return successResponse(
          "Society ${society.socName} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${society.socName} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getSociety(Session session, {String? keyword}) async {
    List<Society> list = [];
    list = helper.getSociety(session, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateSociety(Session session, Society society) async {
    bool result = await helper.updateSociety(session, society);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteSociety(Session session, int id) async {
    int result = await helper.deleteSociety(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
