/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/address.dart' as _i2;
import '../endpoints/area.dart' as _i3;
import '../endpoints/city.dart' as _i4;
import '../endpoints/country.dart' as _i5;
import '../endpoints/district.dart' as _i6;
import '../endpoints/room_members.dart' as _i7;
import '../endpoints/rooms.dart' as _i8;
import '../endpoints/society_endpoint.dart' as _i9;
import '../endpoints/state.dart' as _i10;
import '../endpoints/user_endpoint.dart' as _i11;
import '../endpoints/user_room.dart' as _i12;
import 'package:myproject_2_server/src/generated/address.dart' as _i13;
import 'package:myproject_2_server/src/generated/area.dart' as _i14;
import 'package:myproject_2_server/src/generated/city.dart' as _i15;
import 'package:myproject_2_server/src/generated/country.dart' as _i16;
import 'package:myproject_2_server/src/generated/district.dart' as _i17;
import 'package:myproject_2_server/src/generated/members.dart' as _i18;
import 'package:myproject_2_server/src/generated/user_room.dart' as _i19;
import 'package:myproject_2_server/src/generated/rooms.dart' as _i20;
import 'package:myproject_2_server/src/generated/society.dart' as _i21;
import 'package:myproject_2_server/src/generated/state.dart' as _i22;
import 'package:serverpod_auth_server/module.dart' as _i23;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'address': _i2.AddressEndpoint()
        ..initialize(
          server,
          'address',
          null,
        ),
      'area': _i3.AreaEndpoint()
        ..initialize(
          server,
          'area',
          null,
        ),
      'city': _i4.CityEndpoint()
        ..initialize(
          server,
          'city',
          null,
        ),
      'country': _i5.CountryEndpoint()
        ..initialize(
          server,
          'country',
          null,
        ),
      'district': _i6.DistrictEndpoint()
        ..initialize(
          server,
          'district',
          null,
        ),
      'roomMembers': _i7.RoomMembersEndpoint()
        ..initialize(
          server,
          'roomMembers',
          null,
        ),
      'rooms': _i8.RoomsEndpoint()
        ..initialize(
          server,
          'rooms',
          null,
        ),
      'society': _i9.SocietyEndpoint()
        ..initialize(
          server,
          'society',
          null,
        ),
      'state': _i10.StateEndpoint()
        ..initialize(
          server,
          'state',
          null,
        ),
      'members': _i11.MembersEndpoint()
        ..initialize(
          server,
          'members',
          null,
        ),
      'userRoom': _i12.UserRoomEndpoint()
        ..initialize(
          server,
          'userRoom',
          null,
        ),
    };
    connectors['address'] = _i1.EndpointConnector(
      name: 'address',
      endpoint: endpoints['address']!,
      methodConnectors: {
        'addAddress': _i1.MethodConnector(
          name: 'addAddress',
          params: {
            'address': _i1.ParameterDescription(
              name: 'address',
              type: _i1.getType<_i13.Address>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['address'] as _i2.AddressEndpoint).addAddress(
            session,
            params['address'],
          ),
        ),
        'getAddress': _i1.MethodConnector(
          name: 'getAddress',
          params: {
            'text': _i1.ParameterDescription(
              name: 'text',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['address'] as _i2.AddressEndpoint).getAddress(
            session,
            text: params['text'],
          ),
        ),
        'updateAddress': _i1.MethodConnector(
          name: 'updateAddress',
          params: {
            'address': _i1.ParameterDescription(
              name: 'address',
              type: _i1.getType<_i13.Address>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['address'] as _i2.AddressEndpoint).updateAddress(
            session,
            params['address'],
          ),
        ),
        'deleteAddress': _i1.MethodConnector(
          name: 'deleteAddress',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['address'] as _i2.AddressEndpoint).deleteAddress(
            session,
            params['id'],
          ),
        ),
        'findAddress': _i1.MethodConnector(
          name: 'findAddress',
          params: {
            'areaId': _i1.ParameterDescription(
              name: 'areaId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['address'] as _i2.AddressEndpoint).findAddress(
            session,
            params['areaId'],
          ),
        ),
      },
    );
    connectors['area'] = _i1.EndpointConnector(
      name: 'area',
      endpoint: endpoints['area']!,
      methodConnectors: {
        'addArea': _i1.MethodConnector(
          name: 'addArea',
          params: {
            'area': _i1.ParameterDescription(
              name: 'area',
              type: _i1.getType<_i14.Area>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i3.AreaEndpoint).addArea(
            session,
            params['area'],
          ),
        ),
        'getArea': _i1.MethodConnector(
          name: 'getArea',
          params: {
            'areaId': _i1.ParameterDescription(
              name: 'areaId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i3.AreaEndpoint).getArea(
            session,
            params['areaId'],
            keyword: params['keyword'],
          ),
        ),
        'updateArea': _i1.MethodConnector(
          name: 'updateArea',
          params: {
            'area': _i1.ParameterDescription(
              name: 'area',
              type: _i1.getType<_i14.Area>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i3.AreaEndpoint).updateArea(
            session,
            params['area'],
          ),
        ),
        'deleteArea': _i1.MethodConnector(
          name: 'deleteArea',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i3.AreaEndpoint).deleteArea(
            session,
            params['id'],
          ),
        ),
        'findArea': _i1.MethodConnector(
          name: 'findArea',
          params: {
            'areaId': _i1.ParameterDescription(
              name: 'areaId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['area'] as _i3.AreaEndpoint).findArea(
            session,
            params['areaId'],
          ),
        ),
      },
    );
    connectors['city'] = _i1.EndpointConnector(
      name: 'city',
      endpoint: endpoints['city']!,
      methodConnectors: {
        'addCity': _i1.MethodConnector(
          name: 'addCity',
          params: {
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<_i15.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i4.CityEndpoint).addCity(
            session,
            params['city'],
          ),
        ),
        'getAllCity': _i1.MethodConnector(
          name: 'getAllCity',
          params: {
            'districtId': _i1.ParameterDescription(
              name: 'districtId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i4.CityEndpoint).getAllCity(
            session,
            params['districtId'],
            keyword: params['keyword'],
          ),
        ),
        'updateCity': _i1.MethodConnector(
          name: 'updateCity',
          params: {
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<_i15.City>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i4.CityEndpoint).updateCity(
            session,
            params['city'],
          ),
        ),
        'deleteCity': _i1.MethodConnector(
          name: 'deleteCity',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['city'] as _i4.CityEndpoint).deleteCity(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['country'] = _i1.EndpointConnector(
      name: 'country',
      endpoint: endpoints['country']!,
      methodConnectors: {
        'addCountry': _i1.MethodConnector(
          name: 'addCountry',
          params: {
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<_i16.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i5.CountryEndpoint).addCountry(
            session,
            params['country'],
          ),
        ),
        'getCountry': _i1.MethodConnector(
          name: 'getCountry',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i5.CountryEndpoint).getCountry(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateCountry': _i1.MethodConnector(
          name: 'updateCountry',
          params: {
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<_i16.Country>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i5.CountryEndpoint).updateCountry(
            session,
            params['country'],
          ),
        ),
        'deleteCountry': _i1.MethodConnector(
          name: 'deleteCountry',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['country'] as _i5.CountryEndpoint).deleteCountry(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['district'] = _i1.EndpointConnector(
      name: 'district',
      endpoint: endpoints['district']!,
      methodConnectors: {
        'addDistrict': _i1.MethodConnector(
          name: 'addDistrict',
          params: {
            'district': _i1.ParameterDescription(
              name: 'district',
              type: _i1.getType<_i17.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i6.DistrictEndpoint).addDistrict(
            session,
            params['district'],
          ),
        ),
        'getDistrict': _i1.MethodConnector(
          name: 'getDistrict',
          params: {
            'districtId': _i1.ParameterDescription(
              name: 'districtId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i6.DistrictEndpoint).getDistrict(
            session,
            params['districtId'],
            keyword: params['keyword'],
          ),
        ),
        'updateDistrict': _i1.MethodConnector(
          name: 'updateDistrict',
          params: {
            'district': _i1.ParameterDescription(
              name: 'district',
              type: _i1.getType<_i17.District>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i6.DistrictEndpoint).updateDistrict(
            session,
            params['district'],
          ),
        ),
        'deleteDistrict': _i1.MethodConnector(
          name: 'deleteDistrict',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['district'] as _i6.DistrictEndpoint).deleteDistrict(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['roomMembers'] = _i1.EndpointConnector(
      name: 'roomMembers',
      endpoint: endpoints['roomMembers']!,
      methodConnectors: {
        'updateRequestToJoinRoom': _i1.MethodConnector(
          name: 'updateRequestToJoinRoom',
          params: {
            'userRoomId': _i1.ParameterDescription(
              name: 'userRoomId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint)
                  .updateRequestToJoinRoom(
            session,
            params['userRoomId'],
            params['status'],
          ),
        ),
        'addMembersToShop': _i1.MethodConnector(
          name: 'addMembersToShop',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i18.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint)
                  .addMembersToShop(
            session,
            params['member'],
          ),
        ),
        'getUserRoomMembers': _i1.MethodConnector(
          name: 'getUserRoomMembers',
          params: {
            'roomId': _i1.ParameterDescription(
              name: 'roomId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint)
                  .getUserRoomMembers(
            session,
            roomId: params['roomId'],
          ),
        ),
        'updateMembersDetails': _i1.MethodConnector(
          name: 'updateMembersDetails',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i18.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint)
                  .updateMembersDetails(
            session,
            params['member'],
          ),
        ),
        'deleteMembersFromRoom': _i1.MethodConnector(
          name: 'deleteMembersFromRoom',
          params: {
            'userRoom': _i1.ParameterDescription(
              name: 'userRoom',
              type: _i1.getType<_i19.UserRoom>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint)
                  .deleteMembersFromRoom(
            session,
            params['userRoom'],
          ),
        ),
        'findMembers': _i1.MethodConnector(
          name: 'findMembers',
          params: {
            'searchString': _i1.ParameterDescription(
              name: 'searchString',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['roomMembers'] as _i7.RoomMembersEndpoint).findMembers(
            session,
            searchString: params['searchString'],
          ),
        ),
      },
    );
    connectors['rooms'] = _i1.EndpointConnector(
      name: 'rooms',
      endpoint: endpoints['rooms']!,
      methodConnectors: {
        'getRooms': _i1.MethodConnector(
          name: 'getRooms',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i8.RoomsEndpoint).getRooms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'getAllRooms': _i1.MethodConnector(
          name: 'getAllRooms',
          params: {
            'socId': _i1.ParameterDescription(
              name: 'socId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i8.RoomsEndpoint).getAllRooms(
            session,
            socId: params['socId'],
          ),
        ),
        'addRooms': _i1.MethodConnector(
          name: 'addRooms',
          params: {
            'rooms': _i1.ParameterDescription(
              name: 'rooms',
              type: _i1.getType<_i20.Rooms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i8.RoomsEndpoint).addRooms(
            session,
            params['rooms'],
          ),
        ),
        'updateRooms': _i1.MethodConnector(
          name: 'updateRooms',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i20.Rooms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i8.RoomsEndpoint).updateRooms(
            session,
            params['room'],
          ),
        ),
        'deleteRooms': _i1.MethodConnector(
          name: 'deleteRooms',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i8.RoomsEndpoint).deleteRooms(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['society'] = _i1.EndpointConnector(
      name: 'society',
      endpoint: endpoints['society']!,
      methodConnectors: {
        'addSociety': _i1.MethodConnector(
          name: 'addSociety',
          params: {
            'society': _i1.ParameterDescription(
              name: 'society',
              type: _i1.getType<_i21.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i9.SocietyEndpoint).addSociety(
            session,
            params['society'],
          ),
        ),
        'getSociety': _i1.MethodConnector(
          name: 'getSociety',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i9.SocietyEndpoint).getSociety(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateSociety': _i1.MethodConnector(
          name: 'updateSociety',
          params: {
            'society': _i1.ParameterDescription(
              name: 'society',
              type: _i1.getType<_i21.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i9.SocietyEndpoint).updateSociety(
            session,
            params['society'],
          ),
        ),
        'deleteSociety': _i1.MethodConnector(
          name: 'deleteSociety',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i9.SocietyEndpoint).deleteSociety(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['state'] = _i1.EndpointConnector(
      name: 'state',
      endpoint: endpoints['state']!,
      methodConnectors: {
        'addState': _i1.MethodConnector(
          name: 'addState',
          params: {
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<_i22.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i10.StateEndpoint).addState(
            session,
            params['state'],
          ),
        ),
        'getState': _i1.MethodConnector(
          name: 'getState',
          params: {
            'countryId': _i1.ParameterDescription(
              name: 'countryId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i10.StateEndpoint).getState(
            session,
            params['countryId'],
            keyword: params['keyword'],
          ),
        ),
        'updateState': _i1.MethodConnector(
          name: 'updateState',
          params: {
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<_i22.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i10.StateEndpoint).updateState(
            session,
            params['state'],
          ),
        ),
        'deleteState': _i1.MethodConnector(
          name: 'deleteState',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i10.StateEndpoint).deleteState(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['members'] = _i1.EndpointConnector(
      name: 'members',
      endpoint: endpoints['members']!,
      methodConnectors: {
        'getMembers': _i1.MethodConnector(
          name: 'getMembers',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i11.MembersEndpoint).getMembers(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMembers': _i1.MethodConnector(
          name: 'addMembers',
          params: {
            'users': _i1.ParameterDescription(
              name: 'users',
              type: _i1.getType<_i18.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i11.MembersEndpoint).addMembers(
            session,
            params['users'],
          ),
        ),
        'updateMembers': _i1.MethodConnector(
          name: 'updateMembers',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i18.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i11.MembersEndpoint).updateMembers(
            session,
            params['user'],
          ),
        ),
        'deleteMembers': _i1.MethodConnector(
          name: 'deleteMembers',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i11.MembersEndpoint).deleteMembers(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['userRoom'] = _i1.EndpointConnector(
      name: 'userRoom',
      endpoint: endpoints['userRoom']!,
      methodConnectors: {
        'getUserRoom': _i1.MethodConnector(
          name: 'getUserRoom',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint)
                  .getUserRoom(session),
        ),
        'sendRequestToJoinRoom': _i1.MethodConnector(
          name: 'sendRequestToJoinRoom',
          params: {
            'roomId': _i1.ParameterDescription(
              name: 'roomId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint)
                  .sendRequestToJoinRoom(
            session,
            roomId: params['roomId'],
          ),
        ),
        'updateRequestToJoinRoom': _i1.MethodConnector(
          name: 'updateRequestToJoinRoom',
          params: {
            'userRoomId': _i1.ParameterDescription(
              name: 'userRoomId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint)
                  .updateRequestToJoinRoom(
            session,
            params['userRoomId'],
            params['status'],
          ),
        ),
        'addUserRoom': _i1.MethodConnector(
          name: 'addUserRoom',
          params: {
            'rooms': _i1.ParameterDescription(
              name: 'rooms',
              type: _i1.getType<_i19.UserRoom>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint).addUserRoom(
            session,
            params['rooms'],
          ),
        ),
        'updateUserRoom': _i1.MethodConnector(
          name: 'updateUserRoom',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i19.UserRoom>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint).updateUserRoom(
            session,
            params['room'],
          ),
        ),
        'deleteUserRooms': _i1.MethodConnector(
          name: 'deleteUserRooms',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint).deleteUserRooms(
            session,
            params['id'],
          ),
        ),
        'deleteUserRoomsss': _i1.MethodConnector(
          name: 'deleteUserRoomsss',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userRoom'] as _i12.UserRoomEndpoint)
                  .deleteUserRoomsss(
            session,
            params['id'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i23.Endpoints()..initializeEndpoints(server);
  }
}
