// import 'package:myproject_2_server/response/response.dart';
// import 'package:myproject_2_server/src/generated/address.dart';
// import 'package:myproject_2_server/src/generated/area.dart';
// import 'package:myproject_2_server/src/generated/city.dart';
// import 'package:myproject_2_server/src/generated/country.dart';
// import 'package:myproject_2_server/src/generated/district.dart';
// import 'package:myproject_2_server/src/generated/state.dart';
// import 'package:serverpod/serverpod.dart';

// class AddressHelper {
//   addCountry(Session session, Country country) async {
//     try {
//       List<Country> list = [];
//       list = await getCountry(session, keyword: country.country);
//       if (list.isEmpty) {
//         await Country.insert(session, country);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getCountry(Session session, {String? keyword}) async {
//     try {
//       List<Country> list = [];
//       print(keyword);
//       list = await Country.find(session,
//           where: (t) =>
//               keyword != null ? t.country.like('%$keyword%') : Constant(true));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateCountry(Session session, Country country) async {
//     try {
//       bool result = await Country.update(session, country);
//       return result;
//     } catch (e) {
//       return false;
//     }
//   }

//   deleteCountry(Session session, int id) async {
//     try {
//       int result = await Country.delete(session, where: (t) => t.id.equals(id));
//       return result == 1;
//     } catch (e) {
//       return false;
//     }
//   }

//   addState(Session session, States state) async {
//     try {
//       List<States> list = [];
//       list = await getState(session, state.countryId, keyword: state.state);
//       if (list.isEmpty) {
//         await States.insert(session, state);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getState(Session session, int countryId, {String? keyword}) async {
//     try {
//       List<States> list = [];
//       print(keyword);
//       list = await States.find(session,
//           where: (t) => keyword != null
//               ? t.state.like(keyword)
//               : Constant(true) & t.countryId.equals(countryId));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateState(Session session, States state) async {
//     bool result = await States.update(session, state);
//     return result;
//   }

//   deleteState(Session session, int id) async {
//     int result = await States.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }

//   addDistrict(Session session, District district) async {
//     try {
//       List<District> list = [];
//       list = await getDistrict(session, district.stateId,
//           keyword: district.district);
//       if (list.isEmpty) {
//         await District.insert(session, district);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getDistrict(Session session, int stateId, {String? keyword}) async {
//     try {
//       List<District> list = [];
//       print(keyword);
//       list = await District.find(session,
//           where: (t) => keyword != null
//               ? t.district.like(keyword)
//               : Constant(true) & t.stateId.equals(stateId));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateDistrict(Session session, District district) async {
//     bool result = await District.update(session, district);
//     return result;
//   }

//   deleteDistrict(Session session, int id) async {
//     int result = await District.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }

//   addCity(Session session, City city) async {
//     try {
//       List<City> list = [];
//       list = await getCity(session, city.districtId, keyword: city.city);
//       if (list.isEmpty) {
//         await City.insert(session, city);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getCity(Session session, int districtId, {String? keyword}) async {
//     try {
//       List<City> list = [];
//       print(keyword);
//       list = await City.find(session,
//           where: (t) => keyword != null
//               ? t.city.like(keyword)
//               : Constant(true) & t.districtId.equals(districtId));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateCity(Session session, City state) async {
//     bool result = await City.update(session, state);
//     return result;
//   }

//   deleteCity(Session session, int id) async {
//     int result = await City.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }

//   addArea(Session session, Area area) async {
//     try {
//       List<Area> list = [];
//       list = await getArea(session, area.cityId, keyword: area.area);
//       if (list.isEmpty) {
//         await Area.insert(session, area);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getArea(Session session, int districtId, {String? keyword}) async {
//     try {
//       List<Area> list = [];
//       print(keyword);
//       list = await Area.find(session,
//           where: (t) => keyword != null
//               ? t.area.like(keyword)
//               : Constant(true) & t.cityId.equals(districtId));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateArea(Session session, Area area) async {
//     bool result = await Area.update(session, area);
//     return result;
//   }

//   deleteArea(Session session, int id) async {
//     int result = await Area.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }

//   addAddress(Session session, Address address) async {
//     try {
//       List<Address> list = [];
//       list = await getAddress(session, keyword: address.fullAddress);
//       if (list.isEmpty) {
//         await Address.insert(session, address);
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       errorResponse(e.toString());
//     }
//   }

//   getAddress(Session session, {String? keyword}) async {
//     try {
//       List<Address> list = [];
//       print(keyword);
//       list = await Address.find(session,
//           where: (t) =>
//               keyword != null ? t.fullAddress.like(keyword) : Constant(true));
//       return list;
//     } catch (e) {
//       return errorResponse(e.toString());
//     }
//   }

//   updateAddress(Session session, Address address) async {
//     bool result = await Address.update(session, address);
//     return result;
//   }

//   deleteAddress(Session session, int id) async {
//     int result = await Address.delete(session, where: (t) => t.id.equals(id));
//     return result == 1;
//   }
// }
