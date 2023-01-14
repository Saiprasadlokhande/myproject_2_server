/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Address extends _i1.TableRow {
  Address({
    int? id,
    required this.areaId,
    required this.wardId,
    required this.cityId,
    required this.mcId,
    required this.districtId,
    required this.stateId,
    required this.countryId,
    required this.fullAddress,
    required this.landmark,
    required this.pincode,
  }) : super(id);

  factory Address.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Address(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      areaId:
          serializationManager.deserialize<int>(jsonSerialization['areaId']),
      wardId:
          serializationManager.deserialize<int>(jsonSerialization['wardId']),
      cityId:
          serializationManager.deserialize<int>(jsonSerialization['cityId']),
      mcId: serializationManager.deserialize<int>(jsonSerialization['mcId']),
      districtId: serializationManager
          .deserialize<int>(jsonSerialization['districtId']),
      stateId:
          serializationManager.deserialize<int>(jsonSerialization['stateId']),
      countryId:
          serializationManager.deserialize<int>(jsonSerialization['countryId']),
      fullAddress: serializationManager
          .deserialize<String>(jsonSerialization['fullAddress']),
      landmark: serializationManager
          .deserialize<String>(jsonSerialization['landmark']),
      pincode:
          serializationManager.deserialize<int>(jsonSerialization['pincode']),
    );
  }

  static final t = AddressTable();

  int areaId;

  int wardId;

  int cityId;

  int mcId;

  int districtId;

  int stateId;

  int countryId;

  String fullAddress;

  String landmark;

  int pincode;

  @override
  String get tableName => 'address';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'areaId': areaId,
      'wardId': wardId,
      'cityId': cityId,
      'mcId': mcId,
      'districtId': districtId,
      'stateId': stateId,
      'countryId': countryId,
      'fullAddress': fullAddress,
      'landmark': landmark,
      'pincode': pincode,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'areaId':
        areaId = value;
        return;
      case 'wardId':
        wardId = value;
        return;
      case 'cityId':
        cityId = value;
        return;
      case 'mcId':
        mcId = value;
        return;
      case 'districtId':
        districtId = value;
        return;
      case 'stateId':
        stateId = value;
        return;
      case 'countryId':
        countryId = value;
        return;
      case 'fullAddress':
        fullAddress = value;
        return;
      case 'landmark':
        landmark = value;
        return;
      case 'pincode':
        pincode = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Address>> find(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findSingleRow(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Address>(
      where: where != null ? where(Address.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Address?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Address>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AddressExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Address>(
      where: where(Address.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Address row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AddressExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Address>(
      where: where != null ? where(Address.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AddressExpressionBuilder = _i1.Expression Function(AddressTable);

class AddressTable extends _i1.Table {
  AddressTable() : super(tableName: 'address');

  final id = _i1.ColumnInt('id');

  final areaId = _i1.ColumnInt('areaId');

  final wardId = _i1.ColumnInt('wardId');

  final cityId = _i1.ColumnInt('cityId');

  final mcId = _i1.ColumnInt('mcId');

  final districtId = _i1.ColumnInt('districtId');

  final stateId = _i1.ColumnInt('stateId');

  final countryId = _i1.ColumnInt('countryId');

  final fullAddress = _i1.ColumnString('fullAddress');

  final landmark = _i1.ColumnString('landmark');

  final pincode = _i1.ColumnInt('pincode');

  @override
  List<_i1.Column> get columns => [
        id,
        areaId,
        wardId,
        cityId,
        mcId,
        districtId,
        stateId,
        countryId,
        fullAddress,
        landmark,
        pincode,
      ];
}

@Deprecated('Use AddressTable.t instead.')
AddressTable tAddress = AddressTable();
