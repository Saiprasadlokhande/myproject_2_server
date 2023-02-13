/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class States extends _i1.TableRow {
  States({
    int? id,
    required this.countryId,
    required this.state,
  }) : super(id);

  factory States.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return States(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      countryId:
          serializationManager.deserialize<int>(jsonSerialization['countryId']),
      state:
          serializationManager.deserialize<String>(jsonSerialization['state']),
    );
  }

  static final t = StatesTable();

  int countryId;

  String state;

  @override
  String get tableName => 'states';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'countryId': countryId,
      'state': state,
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
      case 'countryId':
        countryId = value;
        return;
      case 'state':
        state = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<States>> find(
    _i1.Session session, {
    StatesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<States>(
      where: where != null ? where(States.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<States?> findSingleRow(
    _i1.Session session, {
    StatesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<States>(
      where: where != null ? where(States.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<States?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<States>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required StatesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<States>(
      where: where(States.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    States row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    States row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    States row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    StatesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<States>(
      where: where != null ? where(States.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StatesExpressionBuilder = _i1.Expression Function(StatesTable);

class StatesTable extends _i1.Table {
  StatesTable() : super(tableName: 'states');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final countryId = _i1.ColumnInt('countryId');

  final state = _i1.ColumnString('state');

  @override
  List<_i1.Column> get columns => [
        id,
        countryId,
        state,
      ];
}

@Deprecated('Use StatesTable.t instead.')
StatesTable tStates = StatesTable();
