/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class MaintenanceBook extends _i1.TableRow {
  MaintenanceBook({
    int? id,
    required this.socId,
    required this.receiptId,
    required this.roomNo,
    required this.block,
    required this.year,
    required this.ownerId,
    required this.paymentMode,
    required this.paymentDate,
    required this.collectedBy,
    required this.month,
    required this.penalty,
  }) : super(id);

  factory MaintenanceBook.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MaintenanceBook(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      receiptId:
          serializationManager.deserialize<int>(jsonSerialization['receiptId']),
      roomNo:
          serializationManager.deserialize<int>(jsonSerialization['roomNo']),
      block:
          serializationManager.deserialize<String>(jsonSerialization['block']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      paymentMode: serializationManager
          .deserialize<String>(jsonSerialization['paymentMode']),
      paymentDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['paymentDate']),
      collectedBy: serializationManager
          .deserialize<int>(jsonSerialization['collectedBy']),
      month:
          serializationManager.deserialize<String>(jsonSerialization['month']),
      penalty:
          serializationManager.deserialize<int>(jsonSerialization['penalty']),
    );
  }

  static final t = MaintenanceBookTable();

  int socId;

  int receiptId;

  int roomNo;

  String block;

  int year;

  int ownerId;

  String paymentMode;

  DateTime paymentDate;

  int collectedBy;

  String month;

  int penalty;

  @override
  String get tableName => 'maintenance_book';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate,
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate,
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'receiptId': receiptId,
      'roomNo': roomNo,
      'block': block,
      'year': year,
      'ownerId': ownerId,
      'paymentMode': paymentMode,
      'paymentDate': paymentDate,
      'collectedBy': collectedBy,
      'month': month,
      'penalty': penalty,
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
      case 'socId':
        socId = value;
        return;
      case 'receiptId':
        receiptId = value;
        return;
      case 'roomNo':
        roomNo = value;
        return;
      case 'block':
        block = value;
        return;
      case 'year':
        year = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'paymentMode':
        paymentMode = value;
        return;
      case 'paymentDate':
        paymentDate = value;
        return;
      case 'collectedBy':
        collectedBy = value;
        return;
      case 'month':
        month = value;
        return;
      case 'penalty':
        penalty = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MaintenanceBook>> find(
    _i1.Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintenanceBook?> findSingleRow(
    _i1.Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintenanceBook?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<MaintenanceBook>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MaintenanceBookExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MaintenanceBook>(
      where: where(MaintenanceBook.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    MaintenanceBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    MaintenanceBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    MaintenanceBook row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MaintenanceBookExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MaintenanceBook>(
      where: where != null ? where(MaintenanceBook.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MaintenanceBookExpressionBuilder = _i1.Expression Function(
    MaintenanceBookTable);

class MaintenanceBookTable extends _i1.Table {
  MaintenanceBookTable() : super(tableName: 'maintenance_book');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final receiptId = _i1.ColumnInt('receiptId');

  final roomNo = _i1.ColumnInt('roomNo');

  final block = _i1.ColumnString('block');

  final year = _i1.ColumnInt('year');

  final ownerId = _i1.ColumnInt('ownerId');

  final paymentMode = _i1.ColumnString('paymentMode');

  final paymentDate = _i1.ColumnDateTime('paymentDate');

  final collectedBy = _i1.ColumnInt('collectedBy');

  final month = _i1.ColumnString('month');

  final penalty = _i1.ColumnInt('penalty');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        receiptId,
        roomNo,
        block,
        year,
        ownerId,
        paymentMode,
        paymentDate,
        collectedBy,
        month,
        penalty,
      ];
}

@Deprecated('Use MaintenanceBookTable.t instead.')
MaintenanceBookTable tMaintenanceBook = MaintenanceBookTable();
