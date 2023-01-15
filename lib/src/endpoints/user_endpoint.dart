import 'package:myproject_2_server/helper/memberHelper.dart';
import 'package:myproject_2_server/response/constants.dart';
import 'package:myproject_2_server/response/response.dart';
import 'package:myproject_2_server/src/generated/members.dart';
import 'package:serverpod/serverpod.dart';

class MembersEndpoint extends Endpoint {
  MemberHelper helper = MemberHelper();
  Future<ResponseBody> addMembers(Session session, Members member) async {
    bool val = await helper.addMembers(session, member);
    if (val) {
      return successResponse("Members ${member.email} $dataAddedSuccessfully");
    } else {
      return errorResponse("Country ${member.email} $dataAlreadyExist");
    }
  }

  Future<ResponseBody> getMembers(Session session, {String? keyword}) async {
    List<Members> list = [];
    list = helper.getMembers(session, keyword: keyword);
    return successResponse(list);
  }

  Future<ResponseBody> updateMembers(Session session, Members member) async {
    bool result = await helper.updateMembers(session, member);
    return result
        ? successResponse(dataUpdatedSuccessfully)
        : errorResponse(dataUpdateFailed);
  }

  Future<ResponseBody> deleteMembers(Session session, int id) async {
    int result = await helper.deleteMembers(session, id);
    return result == 1
        ? successResponse(dataDeletedSuccessfully)
        : errorResponse(dataDeleteFailed);
  }
}
