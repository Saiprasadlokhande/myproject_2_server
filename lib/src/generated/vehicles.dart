/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Vehicles extends _i1.TableRow {
  Vehicles({
    int? id,
    required this.vehicleNo,
    required this.ownerId,
    required this.roomId,
    required this.vehicleType,
    required this.entryDate,
    required this.updatedDate,
  }) : super(id);

  factory Vehicles.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Vehicles(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      vehicleNo: serializationManager
          .deserialize<String>(jsonSerialization['vehicleNo']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      vehicleType: serializationManager
          .deserialize<int>(jsonSerialization['vehicleType']),
      entryDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['entryDate']),
      updatedDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedDate']),
    );
  }

  static final t = VehiclesTable();

  String vehicleNo;

  int ownerId;

  int roomId;

  int vehicleType;

  DateTime entryDate;

  DateTime updatedDate;

  @override
  String get tableName => 'vehicles';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate,
      'updatedDate': updatedDate,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate,
      'updatedDate': updatedDate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'vehicleNo': vehicleNo,
      'ownerId': ownerId,
      'roomId': roomId,
      'vehicleType': vehicleType,
      'entryDate': entryDate,
      'updatedDate': updatedDate,
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
      case 'vehicleNo':
        vehicleNo = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'roomId':
        roomId = value;
        return;
      case 'vehicleType':
        vehicleType = value;
        return;
      case 'entryDate':
        entryDate = value;
        return;
      case 'updatedDate':
        updatedDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Vehicles>> find(
    _i1.Session session, {
    VehiclesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Vehicles?> findSingleRow(
    _i1.Session session, {
    VehiclesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Vehicles?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Vehicles>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required VehiclesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Vehicles>(
      where: where(Vehicles.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Vehicles row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Vehicles row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Vehicles row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    VehiclesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Vehicles>(
      where: where != null ? where(Vehicles.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef VehiclesExpressionBuilder = _i1.Expression Function(VehiclesTable);

class VehiclesTable extends _i1.Table {
  VehiclesTable() : super(tableName: 'vehicles');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final vehicleNo = _i1.ColumnString('vehicleNo');

  final ownerId = _i1.ColumnInt('ownerId');

  final roomId = _i1.ColumnInt('roomId');

  final vehicleType = _i1.ColumnInt('vehicleType');

  final entryDate = _i1.ColumnDateTime('entryDate');

  final updatedDate = _i1.ColumnDateTime('updatedDate');

  @override
  List<_i1.Column> get columns => [
        id,
        vehicleNo,
        ownerId,
        roomId,
        vehicleType,
        entryDate,
        updatedDate,
      ];
}

@Deprecated('Use VehiclesTable.t instead.')
VehiclesTable tVehicles = VehiclesTable();
