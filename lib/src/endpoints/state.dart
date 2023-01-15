import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StateEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addState(Session session, States state) async {
    bool val = await helper.addState(session, state);
    if (val) {
      return successResponse("State ${state.state} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${state.state} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getState(Session session, int countryId,
      {String? keyword}) async {
    List<Country> list = [];
    list = helper.getState(session, countryId, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateState(Session session, States state) async {
    bool result = await helper.updateState(session, state);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteState(Session session, int id) async {
    int result = await helper.deleteState(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
