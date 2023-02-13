/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Area extends _i1.TableRow {
  Area({
    int? id,
    required this.area,
    required this.cityId,
  }) : super(id);

  factory Area.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Area(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      area: serializationManager.deserialize<String>(jsonSerialization['area']),
      cityId:
          serializationManager.deserialize<int>(jsonSerialization['cityId']),
    );
  }

  static final t = AreaTable();

  String area;

  int cityId;

  @override
  String get tableName => 'area';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'area': area,
      'cityId': cityId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'area': area,
      'cityId': cityId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'area': area,
      'cityId': cityId,
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
      case 'area':
        area = value;
        return;
      case 'cityId':
        cityId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Area>> find(
    _i1.Session session, {
    AreaExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Area>(
      where: where != null ? where(Area.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Area?> findSingleRow(
    _i1.Session session, {
    AreaExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Area>(
      where: where != null ? where(Area.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Area?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Area>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AreaExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Area>(
      where: where(Area.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Area row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Area row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Area row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AreaExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Area>(
      where: where != null ? where(Area.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AreaExpressionBuilder = _i1.Expression Function(AreaTable);

class AreaTable extends _i1.Table {
  AreaTable() : super(tableName: 'area');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final area = _i1.ColumnString('area');

  final cityId = _i1.ColumnInt('cityId');

  @override
  List<_i1.Column> get columns => [
        id,
        area,
        cityId,
      ];
}

@Deprecated('Use AreaTable.t instead.')
AreaTable tArea = AreaTable();
