/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class City extends _i1.TableRow {
  City({
    int? id,
    required this.districtId,
    required this.city,
  }) : super(id);

  factory City.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return City(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      districtId: serializationManager
          .deserialize<int>(jsonSerialization['districtId']),
      city: serializationManager.deserialize<String>(jsonSerialization['city']),
    );
  }

  static final t = CityTable();

  int districtId;

  String city;

  @override
  String get tableName => 'city';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'districtId': districtId,
      'city': city,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'districtId': districtId,
      'city': city,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'districtId': districtId,
      'city': city,
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
      case 'districtId':
        districtId = value;
        return;
      case 'city':
        city = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<City>> find(
    _i1.Session session, {
    CityExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<City>(
      where: where != null ? where(City.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<City?> findSingleRow(
    _i1.Session session, {
    CityExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<City>(
      where: where != null ? where(City.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<City?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<City>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CityExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<City>(
      where: where(City.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    CityExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<City>(
      where: where != null ? where(City.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CityExpressionBuilder = _i1.Expression Function(CityTable);

class CityTable extends _i1.Table {
  CityTable() : super(tableName: 'city');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final districtId = _i1.ColumnInt('districtId');

  final city = _i1.ColumnString('city');

  @override
  List<_i1.Column> get columns => [
        id,
        districtId,
        city,
      ];
}

@Deprecated('Use CityTable.t instead.')
CityTable tCity = CityTable();
