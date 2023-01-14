/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Rooms extends _i1.TableRow {
  Rooms({
    int? id,
    required this.socId,
    required this.roomNo,
    required this.owner,
    required this.onRent,
    required this.onSale,
    required this.carpetArea,
    required this.roomStructure,
    required this.balcony,
    required this.isOccupied,
    required this.totalMembers,
    required this.roomExist,
    required this.ownerId,
    required this.membersId,
    required this.rentalId,
  }) : super(id);

  factory Rooms.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Rooms(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      roomNo:
          serializationManager.deserialize<int>(jsonSerialization['roomNo']),
      owner:
          serializationManager.deserialize<String>(jsonSerialization['owner']),
      onRent:
          serializationManager.deserialize<bool>(jsonSerialization['onRent']),
      onSale:
          serializationManager.deserialize<bool>(jsonSerialization['onSale']),
      carpetArea: serializationManager
          .deserialize<int>(jsonSerialization['carpetArea']),
      roomStructure: serializationManager
          .deserialize<String>(jsonSerialization['roomStructure']),
      balcony:
          serializationManager.deserialize<bool>(jsonSerialization['balcony']),
      isOccupied: serializationManager
          .deserialize<bool>(jsonSerialization['isOccupied']),
      totalMembers: serializationManager
          .deserialize<int>(jsonSerialization['totalMembers']),
      roomExist: serializationManager
          .deserialize<bool>(jsonSerialization['roomExist']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      membersId: serializationManager
          .deserialize<List<int>>(jsonSerialization['membersId']),
      rentalId: serializationManager
          .deserialize<List<int>>(jsonSerialization['rentalId']),
    );
  }

  static final t = RoomsTable();

  int socId;

  int roomNo;

  String owner;

  bool onRent;

  bool onSale;

  int carpetArea;

  String roomStructure;

  bool balcony;

  bool isOccupied;

  int totalMembers;

  bool roomExist;

  int ownerId;

  List<int> membersId;

  List<int> rentalId;

  @override
  String get tableName => 'rooms';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'roomNo': roomNo,
      'owner': owner,
      'onRent': onRent,
      'onSale': onSale,
      'carpetArea': carpetArea,
      'roomStructure': roomStructure,
      'balcony': balcony,
      'isOccupied': isOccupied,
      'totalMembers': totalMembers,
      'roomExist': roomExist,
      'ownerId': ownerId,
      'membersId': membersId,
      'rentalId': rentalId,
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
      case 'roomNo':
        roomNo = value;
        return;
      case 'owner':
        owner = value;
        return;
      case 'onRent':
        onRent = value;
        return;
      case 'onSale':
        onSale = value;
        return;
      case 'carpetArea':
        carpetArea = value;
        return;
      case 'roomStructure':
        roomStructure = value;
        return;
      case 'balcony':
        balcony = value;
        return;
      case 'isOccupied':
        isOccupied = value;
        return;
      case 'totalMembers':
        totalMembers = value;
        return;
      case 'roomExist':
        roomExist = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'membersId':
        membersId = value;
        return;
      case 'rentalId':
        rentalId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Rooms>> find(
    _i1.Session session, {
    RoomsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rooms?> findSingleRow(
    _i1.Session session, {
    RoomsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Rooms?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Rooms>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required RoomsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Rooms>(
      where: where(Rooms.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Rooms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Rooms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Rooms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    RoomsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Rooms>(
      where: where != null ? where(Rooms.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef RoomsExpressionBuilder = _i1.Expression Function(RoomsTable);

class RoomsTable extends _i1.Table {
  RoomsTable() : super(tableName: 'rooms');

  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final roomNo = _i1.ColumnInt('roomNo');

  final owner = _i1.ColumnString('owner');

  final onRent = _i1.ColumnBool('onRent');

  final onSale = _i1.ColumnBool('onSale');

  final carpetArea = _i1.ColumnInt('carpetArea');

  final roomStructure = _i1.ColumnString('roomStructure');

  final balcony = _i1.ColumnBool('balcony');

  final isOccupied = _i1.ColumnBool('isOccupied');

  final totalMembers = _i1.ColumnInt('totalMembers');

  final roomExist = _i1.ColumnBool('roomExist');

  final ownerId = _i1.ColumnInt('ownerId');

  final membersId = _i1.ColumnSerializable('membersId');

  final rentalId = _i1.ColumnSerializable('rentalId');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        roomNo,
        owner,
        onRent,
        onSale,
        carpetArea,
        roomStructure,
        balcony,
        isOccupied,
        totalMembers,
        roomExist,
        ownerId,
        membersId,
        rentalId,
      ];
}

@Deprecated('Use RoomsTable.t instead.')
RoomsTable tRooms = RoomsTable();
