import 'package:myproject_2_server/src/generated/members.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

class MembersEndpoint extends Endpoint {
  Future<bool> addUserToMember(Session session, {required int userId}) async {
    try {
      UserInfo? info = await Users.findUserByUserId(session, userId);
      Members? member = await getMemberDetailsByUserId(session, userId: userId);
      if (member == null) {
        Members members = Members(
            name: info!.userName,
            isAadharVerified: false,
            age: 0,
            userId: userId,
            mobile: "",
            email: info.email!,
            aadharNo: "",
            dob: "",
            blockCount: 0,
            mobileModel: "",
            status: true,
            isActive: true);
        await Members.insert(session, members);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("$e");
      return false;
    }
  }

  Future<Members?> getMemberDetailsByUserId(Session session,
      {int? userId}) async {
    List<Members> members =
        await Members.find(session, where: (t) => t.userId.equals(userId));
    if (members.isNotEmpty) {
      return members[0];
    } else {
      return null;
    }
  }

  Future<List<Members>> getMembers(Session session, {String? keyword}) async {
    return await Members.find(session,
        where: (t) =>
            keyword != null ? t.name.ilike('%$keyword%') : Constant(true));
  }

  Future<Members?> getMembersById(Session session, {int? userId}) async {
    return await Members.findById(session, userId!);
  }

  Future<bool> addMembers(Session session, Members users) async {
    await Members.insert(session, users);
    return true;
  }

  Future<bool> updateMembers(Session session, Members user) async {
    bool result = await Members.update(session, user);
    return result;
  }

  Future<bool> deleteMembers(Session session, int id) async {
    var result = await Members.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
