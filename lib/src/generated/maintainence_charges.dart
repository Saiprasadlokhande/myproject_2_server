/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class MaintainenceCharges extends _i1.TableRow {
  MaintainenceCharges({
    int? id,
    required this.socId,
    required this.fromDate,
    required this.toDate,
    required this.oneBhk,
    required this.twoBhk,
    required this.threeBhk,
    required this.fourBhk,
    required this.persqft,
    required this.twoWheel,
    required this.threeWheel,
    required this.fourWheel,
    required this.other,
    required this.rental,
    required this.nonOccupancy,
    required this.year,
    required this.penalty,
    required this.dueDate,
    required this.isActive,
  }) : super(id);

  factory MaintainenceCharges.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MaintainenceCharges(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      fromDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['fromDate']),
      toDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['toDate']),
      oneBhk:
          serializationManager.deserialize<int>(jsonSerialization['oneBhk']),
      twoBhk:
          serializationManager.deserialize<int>(jsonSerialization['twoBhk']),
      threeBhk:
          serializationManager.deserialize<int>(jsonSerialization['threeBhk']),
      fourBhk:
          serializationManager.deserialize<int>(jsonSerialization['fourBhk']),
      persqft:
          serializationManager.deserialize<int>(jsonSerialization['persqft']),
      twoWheel:
          serializationManager.deserialize<int>(jsonSerialization['twoWheel']),
      threeWheel: serializationManager
          .deserialize<int>(jsonSerialization['threeWheel']),
      fourWheel:
          serializationManager.deserialize<int>(jsonSerialization['fourWheel']),
      other: serializationManager.deserialize<int>(jsonSerialization['other']),
      rental:
          serializationManager.deserialize<int>(jsonSerialization['rental']),
      nonOccupancy: serializationManager
          .deserialize<int>(jsonSerialization['nonOccupancy']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
      penalty:
          serializationManager.deserialize<int>(jsonSerialization['penalty']),
      dueDate:
          serializationManager.deserialize<int>(jsonSerialization['dueDate']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
    );
  }

  static final t = MaintainenceChargesTable();

  int socId;

  DateTime fromDate;

  DateTime toDate;

  int oneBhk;

  int twoBhk;

  int threeBhk;

  int fourBhk;

  int persqft;

  int twoWheel;

  int threeWheel;

  int fourWheel;

  int other;

  int rental;

  int nonOccupancy;

  int year;

  int penalty;

  int dueDate;

  bool isActive;

  @override
  String get tableName => 'maintainence_charges';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'fromDate': fromDate,
      'toDate': toDate,
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'fromDate': fromDate,
      'toDate': toDate,
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'fromDate': fromDate,
      'toDate': toDate,
      'oneBhk': oneBhk,
      'twoBhk': twoBhk,
      'threeBhk': threeBhk,
      'fourBhk': fourBhk,
      'persqft': persqft,
      'twoWheel': twoWheel,
      'threeWheel': threeWheel,
      'fourWheel': fourWheel,
      'other': other,
      'rental': rental,
      'nonOccupancy': nonOccupancy,
      'year': year,
      'penalty': penalty,
      'dueDate': dueDate,
      'isActive': isActive,
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
      case 'fromDate':
        fromDate = value;
        return;
      case 'toDate':
        toDate = value;
        return;
      case 'oneBhk':
        oneBhk = value;
        return;
      case 'twoBhk':
        twoBhk = value;
        return;
      case 'threeBhk':
        threeBhk = value;
        return;
      case 'fourBhk':
        fourBhk = value;
        return;
      case 'persqft':
        persqft = value;
        return;
      case 'twoWheel':
        twoWheel = value;
        return;
      case 'threeWheel':
        threeWheel = value;
        return;
      case 'fourWheel':
        fourWheel = value;
        return;
      case 'other':
        other = value;
        return;
      case 'rental':
        rental = value;
        return;
      case 'nonOccupancy':
        nonOccupancy = value;
        return;
      case 'year':
        year = value;
        return;
      case 'penalty':
        penalty = value;
        return;
      case 'dueDate':
        dueDate = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<MaintainenceCharges>> find(
    _i1.Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintainenceCharges?> findSingleRow(
    _i1.Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<MaintainenceCharges?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<MaintainenceCharges>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MaintainenceChargesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MaintainenceCharges>(
      where: where(MaintainenceCharges.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    MaintainenceCharges row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    MaintainenceCharges row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    MaintainenceCharges row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MaintainenceChargesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MaintainenceCharges>(
      where: where != null ? where(MaintainenceCharges.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MaintainenceChargesExpressionBuilder = _i1.Expression Function(
    MaintainenceChargesTable);

class MaintainenceChargesTable extends _i1.Table {
  MaintainenceChargesTable() : super(tableName: 'maintainence_charges');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final fromDate = _i1.ColumnDateTime('fromDate');

  final toDate = _i1.ColumnDateTime('toDate');

  final oneBhk = _i1.ColumnInt('oneBhk');

  final twoBhk = _i1.ColumnInt('twoBhk');

  final threeBhk = _i1.ColumnInt('threeBhk');

  final fourBhk = _i1.ColumnInt('fourBhk');

  final persqft = _i1.ColumnInt('persqft');

  final twoWheel = _i1.ColumnInt('twoWheel');

  final threeWheel = _i1.ColumnInt('threeWheel');

  final fourWheel = _i1.ColumnInt('fourWheel');

  final other = _i1.ColumnInt('other');

  final rental = _i1.ColumnInt('rental');

  final nonOccupancy = _i1.ColumnInt('nonOccupancy');

  final year = _i1.ColumnInt('year');

  final penalty = _i1.ColumnInt('penalty');

  final dueDate = _i1.ColumnInt('dueDate');

  final isActive = _i1.ColumnBool('isActive');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        fromDate,
        toDate,
        oneBhk,
        twoBhk,
        threeBhk,
        fourBhk,
        persqft,
        twoWheel,
        threeWheel,
        fourWheel,
        other,
        rental,
        nonOccupancy,
        year,
        penalty,
        dueDate,
        isActive,
      ];
}

@Deprecated('Use MaintainenceChargesTable.t instead.')
MaintainenceChargesTable tMaintainenceCharges = MaintainenceChargesTable();
