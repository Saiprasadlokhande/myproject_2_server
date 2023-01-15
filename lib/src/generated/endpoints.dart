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
import '../endpoints/society_endpoint.dart' as _i7;
import '../endpoints/state.dart' as _i8;
import '../endpoints/user_endpoint.dart' as _i9;
import 'package:myproject_2_server/src/generated/address.dart' as _i10;
import 'package:myproject_2_server/src/generated/area.dart' as _i11;
import 'package:myproject_2_server/src/generated/city.dart' as _i12;
import 'package:myproject_2_server/src/generated/country.dart' as _i13;
import 'package:myproject_2_server/src/generated/district.dart' as _i14;
import 'package:myproject_2_server/src/generated/society.dart' as _i15;
import 'package:myproject_2_server/src/generated/state.dart' as _i16;
import 'package:myproject_2_server/src/generated/members.dart' as _i17;

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
      'society': _i7.SocietyEndpoint()
        ..initialize(
          server,
          'society',
          null,
        ),
      'state': _i8.StateEndpoint()
        ..initialize(
          server,
          'state',
          null,
        ),
      'members': _i9.MembersEndpoint()
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
              type: _i1.getType<_i10.Address>(),
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
              (endpoints['address'] as _i2.AddressEndpoint).getAddress(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateAddress': _i1.MethodConnector(
          name: 'updateAddress',
          params: {
            'address': _i1.ParameterDescription(
              name: 'address',
              type: _i1.getType<_i10.Address>(),
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
              type: _i1.getType<_i11.Area>(),
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
              (endpoints['area'] as _i3.AreaEndpoint).getArea(
            session,
            params['districtId'],
            keyword: params['keyword'],
          ),
        ),
        'updateArea': _i1.MethodConnector(
          name: 'updateArea',
          params: {
            'area': _i1.ParameterDescription(
              name: 'area',
              type: _i1.getType<_i11.Area>(),
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
              type: _i1.getType<_i12.City>(),
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
        'getCity': _i1.MethodConnector(
          name: 'getCity',
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
              (endpoints['city'] as _i4.CityEndpoint).getCity(
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
              type: _i1.getType<_i12.City>(),
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
              type: _i1.getType<_i13.Country>(),
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
              type: _i1.getType<_i13.Country>(),
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
              type: _i1.getType<_i14.District>(),
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
              (endpoints['district'] as _i6.DistrictEndpoint).getDistrict(
            session,
            params['countryId'],
            keyword: params['keyword'],
          ),
        ),
        'updateDistrict': _i1.MethodConnector(
          name: 'updateDistrict',
          params: {
            'district': _i1.ParameterDescription(
              name: 'district',
              type: _i1.getType<_i14.District>(),
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
    connectors['society'] = _i1.EndpointConnector(
      name: 'society',
      endpoint: endpoints['society']!,
      methodConnectors: {
        'addSociety': _i1.MethodConnector(
          name: 'addSociety',
          params: {
            'society': _i1.ParameterDescription(
              name: 'society',
              type: _i1.getType<_i15.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i7.SocietyEndpoint).addSociety(
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
              (endpoints['society'] as _i7.SocietyEndpoint).getSociety(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateSociety': _i1.MethodConnector(
          name: 'updateSociety',
          params: {
            'society': _i1.ParameterDescription(
              name: 'society',
              type: _i1.getType<_i15.Society>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['society'] as _i7.SocietyEndpoint).updateSociety(
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
              (endpoints['society'] as _i7.SocietyEndpoint).deleteSociety(
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
              type: _i1.getType<_i16.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i8.StateEndpoint).addState(
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
              (endpoints['state'] as _i8.StateEndpoint).getState(
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
              type: _i1.getType<_i16.States>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['state'] as _i8.StateEndpoint).updateState(
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
              (endpoints['state'] as _i8.StateEndpoint).deleteState(
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
        'addMembers': _i1.MethodConnector(
          name: 'addMembers',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i17.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i9.MembersEndpoint).addMembers(
            session,
            params['member'],
          ),
        ),
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
              (endpoints['members'] as _i9.MembersEndpoint).getMembers(
            session,
            keyword: params['keyword'],
          ),
        ),
        'updateMembers': _i1.MethodConnector(
          name: 'updateMembers',
          params: {
            'member': _i1.ParameterDescription(
              name: 'member',
              type: _i1.getType<_i17.Members>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['members'] as _i9.MembersEndpoint).updateMembers(
            session,
            params['member'],
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
              (endpoints['members'] as _i9.MembersEndpoint).deleteMembers(
            session,
            params['id'],
          ),
        ),
      },
    );
  }
}
