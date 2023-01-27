// import 'package:myproject_2_server/response/response.dart';
// import 'package:myproject_2_server/src/generated/society.dart';
// import 'package:serverpod/serverpod.dart';

// class SocietyHelper {
//   addSociety(Session session, Society society) async {
//     try {
//       List<Society> list = [];
//       list = await getSociety(session, keyword: society.socName);
//       if (list.isEmpty) {
//         await Society.insert(session, society);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getSociety(Session session, {String? keyword}) async {
//     try {
//       List<Society> list = [];
//       print(keyword);
//       list = await Society.find(session,
//           where: (t) =>
//               keyword != null ? t.socName.like(keyword) : Constant(true));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateSociety(Session session, Society society) async {
//     bool result = await Society.update(session, society);
//     return result;
//   }

//   deleteSociety(Session session, int id) async {
//     int result = await Society.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }
// }
