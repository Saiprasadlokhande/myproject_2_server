/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class District extends _i1.TableRow {
  District({
    int? id,
    required this.stateId,
    required this.district,
  }) : super(id);

  factory District.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return District(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      stateId:
          serializationManager.deserialize<int>(jsonSerialization['stateId']),
      district: serializationManager
          .deserialize<String>(jsonSerialization['district']),
    );
  }

  static final t = DistrictTable();

  int stateId;

  String district;

  @override
  String get tableName => 'district';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'stateId': stateId,
      'district': district,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'stateId': stateId,
      'district': district,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'stateId': stateId,
      'district': district,
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
      case 'stateId':
        stateId = value;
        return;
      case 'district':
        district = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<District>> find(
    _i1.Session session, {
    DistrictExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<District>(
      where: where != null ? where(District.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<District?> findSingleRow(
    _i1.Session session, {
    DistrictExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<District>(
      where: where != null ? where(District.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<District?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<District>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DistrictExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<District>(
      where: where(District.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    District row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    District row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    District row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DistrictExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<District>(
      where: where != null ? where(District.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DistrictExpressionBuilder = _i1.Expression Function(DistrictTable);

class DistrictTable extends _i1.Table {
  DistrictTable() : super(tableName: 'district');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final stateId = _i1.ColumnInt('stateId');

  final district = _i1.ColumnString('district');

  @override
  List<_i1.Column> get columns => [
        id,
        stateId,
        district,
      ];
}

@Deprecated('Use DistrictTable.t instead.')
DistrictTable tDistrict = DistrictTable();
