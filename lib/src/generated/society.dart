/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Society extends _i1.TableRow {
  Society({
    int? id,
    required this.socName,
    required this.socRegNo,
    required this.socAddressId,
    required this.totalRoom,
    required this.totalBlock,
    required this.totalShop,
    required this.totalFloor,
    required this.maxRoomsEachFloor,
    required this.latitude,
    required this.longitude,
    required this.landmark,
  }) : super(id);

  factory Society.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Society(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socName: serializationManager
          .deserialize<String>(jsonSerialization['socName']),
      socRegNo: serializationManager
          .deserialize<String>(jsonSerialization['socRegNo']),
      socAddressId: serializationManager
          .deserialize<int>(jsonSerialization['socAddressId']),
      totalRoom:
          serializationManager.deserialize<int>(jsonSerialization['totalRoom']),
      totalBlock: serializationManager
          .deserialize<int>(jsonSerialization['totalBlock']),
      totalShop:
          serializationManager.deserialize<int>(jsonSerialization['totalShop']),
      totalFloor: serializationManager
          .deserialize<List<int>>(jsonSerialization['totalFloor']),
      maxRoomsEachFloor: serializationManager
          .deserialize<List<int>>(jsonSerialization['maxRoomsEachFloor']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      landmark: serializationManager
          .deserialize<String>(jsonSerialization['landmark']),
    );
  }

  static final t = SocietyTable();

  String socName;

  String socRegNo;

  int socAddressId;

  int totalRoom;

  int totalBlock;

  int totalShop;

  List<int> totalFloor;

  List<int> maxRoomsEachFloor;

  double latitude;

  double longitude;

  String landmark;

  @override
  String get tableName => 'society';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socName': socName,
      'socRegNo': socRegNo,
      'socAddressId': socAddressId,
      'totalRoom': totalRoom,
      'totalBlock': totalBlock,
      'totalShop': totalShop,
      'totalFloor': totalFloor,
      'maxRoomsEachFloor': maxRoomsEachFloor,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
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
      case 'socName':
        socName = value;
        return;
      case 'socRegNo':
        socRegNo = value;
        return;
      case 'socAddressId':
        socAddressId = value;
        return;
      case 'totalRoom':
        totalRoom = value;
        return;
      case 'totalBlock':
        totalBlock = value;
        return;
      case 'totalShop':
        totalShop = value;
        return;
      case 'totalFloor':
        totalFloor = value;
        return;
      case 'maxRoomsEachFloor':
        maxRoomsEachFloor = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'landmark':
        landmark = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Society>> find(
    _i1.Session session, {
    SocietyExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Society>(
      where: where != null ? where(Society.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Society?> findSingleRow(
    _i1.Session session, {
    SocietyExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Society>(
      where: where != null ? where(Society.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Society?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Society>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SocietyExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Society>(
      where: where(Society.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Society row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Society row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Society row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SocietyExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Society>(
      where: where != null ? where(Society.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocietyExpressionBuilder = _i1.Expression Function(SocietyTable);

class SocietyTable extends _i1.Table {
  SocietyTable() : super(tableName: 'society');

  final id = _i1.ColumnInt('id');

  final socName = _i1.ColumnString('socName');

  final socRegNo = _i1.ColumnString('socRegNo');

  final socAddressId = _i1.ColumnInt('socAddressId');

  final totalRoom = _i1.ColumnInt('totalRoom');

  final totalBlock = _i1.ColumnInt('totalBlock');

  final totalShop = _i1.ColumnInt('totalShop');

  final totalFloor = _i1.ColumnSerializable('totalFloor');

  final maxRoomsEachFloor = _i1.ColumnSerializable('maxRoomsEachFloor');

  final latitude = _i1.ColumnDouble('latitude');

  final longitude = _i1.ColumnDouble('longitude');

  final landmark = _i1.ColumnString('landmark');

  @override
  List<_i1.Column> get columns => [
        id,
        socName,
        socRegNo,
        socAddressId,
        totalRoom,
        totalBlock,
        totalShop,
        totalFloor,
        maxRoomsEachFloor,
        latitude,
        longitude,
        landmark,
      ];
}

@Deprecated('Use SocietyTable.t instead.')
SocietyTable tSociety = SocietyTable();
