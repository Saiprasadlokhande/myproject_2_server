import 'package:myproject_2_server/helper/addressHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/address.dart';
import 'package:serverpod/serverpod.dart';

class AddressEndpoint extends Endpoint {
  AddressHelper helper = AddressHelper();
  Future<ResponseBody> addAddress(Session session, Address address) async {
    bool val = await helper.addAddress(session, address);
    if (val) {
      return successResponse("Address $dataAddedSuccessfully");
    } else {
      return errorResponse("Country $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getAddress(Session session, {String? keyword}) async {
    List<Address> list = [];
    list = helper.getAddress(session, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateAddress(Session session, Address address) async {
    bool result = await helper.updateAddress(session, address);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteAddress(Session session, int id) async {
    int result = await helper.deleteAddress(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
