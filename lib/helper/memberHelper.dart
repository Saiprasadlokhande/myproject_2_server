// import 'package:myproject_2_server/response/response.dart';
// import 'package:myproject_2_server/src/generated/members.dart';
// import 'package:serverpod/serverpod.dart';

// class MemberHelper {
//   addMembers(Session session, Members members) async {
//     try {
//       List<Members> list = [];
//       list = await getMembers(session, keyword: members.email);
//       if (list.isEmpty) {
//         await Members.insert(session, members);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getMembers(Session session, {String? keyword}) async {
//     try {
//       List<Members> list = [];
//       print(keyword);
//       list = await Members.find(session,
//           where: (t) =>
//               keyword != null ? t.name.like(keyword) : Constant(true));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateMembers(Session session, Members members) async {
//     bool result = await Members.update(session, members);
//     return result;
//   }

//   deleteMembers(Session session, int id) async {
//     int result = await Members.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }
// }
