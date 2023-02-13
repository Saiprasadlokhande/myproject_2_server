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
import '../endpoints/rooms.dart' as _i7;
import '../endpoints/society_endpoint.dart' as _i8;
import '../endpoints/state.dart' as _i9;
import '../endpoints/user_endpoint.dart' as _i10;
import 'package:myproject_2_server/src/generated/address.dart' as _i11;
import 'package:myproject_2_server/src/generated/area.dart' as _i12;
import 'package:myproject_2_server/src/generated/city.dart' as _i13;
import 'package:myproject_2_server/src/generated/country.dart' as _i14;
import 'package:myproject_2_server/src/generated/district.dart' as _i15;
import 'package:myproject_2_server/src/generated/rooms.dart' as _i16;
import 'package:myproject_2_server/src/generated/society.dart' as _i17;
import 'package:myproject_2_server/src/generated/state.dart' as _i18;
import 'package:myproject_2_server/src/generated/members.dart' as _i19;
import 'package:serverpod_auth_server/module.dart' as _i20;

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
      'rooms': _i7.RoomsEndpoint()
        ..initialize(
          server,
          'rooms',
          null,
        ),
      'society': _i8.SocietyEndpoint()
        ..initialize(
          server,
          'society',
          null,
        ),
      'state': _i9.StateEndpoint()
        ..initialize(
          server,
          'state',
          null,
        ),
      'members': _i10.MembersEndpoint()
        ..initialize(
          server,
          'members',
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
              type: _i1.getType<_i11.Address>(),
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
              type: _i1.getType<_i11.Address>(),
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
              type: _i1.getType<_i12.Area>(),
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
              type: _i1.getType<_i12.Area>(),
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
              type: _i1.getType<_i13.City>(),
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
              type: _i1.getType<_i13.City>(),
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
              type: _i1.getType<_i14.Country>(),
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
              type: _i1.getType<_i14.Country>(),
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
              type: _i1.getType<_i15.District>(),
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
              type: _i1.getType<_i15.District>(),
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
              (endpoints['rooms'] as _i7.RoomsEndpoint).getRooms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addRooms': _i1.MethodConnector(
          name: 'addRooms',
          params: {
            'rooms': _i1.ParameterDescription(
              name: 'rooms',
              type: _i1.getType<_i16.Rooms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i7.RoomsEndpoint).addRooms(
            session,
            params['rooms'],
          ),
        ),
        'updateRooms': _i1.MethodConnector(
          name: 'updateRooms',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i16.Rooms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i7.RoomsEndpoint).updateRooms(
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
              (endpoints['rooms'] as _i7.RoomsEndpoint).deleteRooms(
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
              type: _i1.getType<_i17.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i8.SocietyEndpoint).addSociety(
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
              (endpoints['society'] as _i8.SocietyEndpoint).getSociety(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateSociety': _i1.MethodConnector(
          name: 'updateSociety',
          params: {
            'society': _i1.ParameterDescription(
              name: 'society',
              type: _i1.getType<_i17.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i8.SocietyEndpoint).updateSociety(
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
              (endpoints['society'] as _i8.SocietyEndpoint).deleteSociety(
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
              type: _i1.getType<_i18.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i9.StateEndpoint).addState(
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
              (endpoints['state'] as _i9.StateEndpoint).getState(
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
              type: _i1.getType<_i18.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i9.StateEndpoint).updateState(
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
              (endpoints['state'] as _i9.StateEndpoint).deleteState(
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
              (endpoints['members'] as _i10.MembersEndpoint).getMembers(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMembers': _i1.MethodConnector(
          name: 'addMembers',
          params: {
            'users': _i1.ParameterDescription(
              name: 'users',
              type: _i1.getType<_i19.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i10.MembersEndpoint).addMembers(
            session,
            params['users'],
          ),
        ),
        'updateMembers': _i1.MethodConnector(
          name: 'updateMembers',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i19.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i10.MembersEndpoint).updateMembers(
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
              (endpoints['members'] as _i10.MembersEndpoint).deleteMembers(
            session,
            params['id'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i20.Endpoints()..initializeEndpoints(server);
  }
}
