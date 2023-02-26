/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class UserRoom extends _i1.TableRow {
  UserRoom({
    int? id,
    required this.socId,
    required this.userId,
    required this.roomId,
    required this.fromDate,
    this.toDate,
    required this.isOwner,
    required this.isResident,
    required this.isRental,
    required this.userRoomStatus,
    this.roomDetails,
    this.societyDetails,
    this.address,
  }) : super(id);

  factory UserRoom.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserRoom(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      roomId:
          serializationManager.deserialize<int>(jsonSerialization['roomId']),
      fromDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['fromDate']),
      toDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['toDate']),
      isOwner:
          serializationManager.deserialize<bool>(jsonSerialization['isOwner']),
      isResident: serializationManager
          .deserialize<bool>(jsonSerialization['isResident']),
      isRental:
          serializationManager.deserialize<bool>(jsonSerialization['isRental']),
      userRoomStatus: serializationManager
          .deserialize<bool>(jsonSerialization['userRoomStatus']),
      roomDetails: serializationManager
          .deserialize<_i2.Rooms?>(jsonSerialization['roomDetails']),
      societyDetails: serializationManager
          .deserialize<_i2.Society?>(jsonSerialization['societyDetails']),
      address: serializationManager
          .deserialize<_i2.Address?>(jsonSerialization['address']),
    );
  }

  static final t = UserRoomTable();

  int socId;

  int userId;

  int roomId;

  DateTime fromDate;

  DateTime? toDate;

  bool isOwner;

  bool isResident;

  bool isRental;

  bool userRoomStatus;

  _i2.Rooms? roomDetails;

  _i2.Society? societyDetails;

  _i2.Address? address;

  @override
  String get tableName => 'user_room';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate,
      'toDate': toDate,
      'isOwner': isOwner,
      'isResident': isResident,
      'isRental': isRental,
      'userRoomStatus': userRoomStatus,
      'roomDetails': roomDetails,
      'societyDetails': societyDetails,
      'address': address,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate,
      'toDate': toDate,
      'isOwner': isOwner,
      'isResident': isResident,
      'isRental': isRental,
      'userRoomStatus': userRoomStatus,
      'roomDetails': roomDetails,
      'societyDetails': societyDetails,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'userId': userId,
      'roomId': roomId,
      'fromDate': fromDate,
      'toDate': toDate,
      'isOwner': isOwner,
      'isResident': isResident,
      'isRental': isRental,
      'userRoomStatus': userRoomStatus,
      'roomDetails': roomDetails,
      'societyDetails': societyDetails,
      'address': address,
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
      case 'userId':
        userId = value;
        return;
      case 'roomId':
        roomId = value;
        return;
      case 'fromDate':
        fromDate = value;
        return;
      case 'toDate':
        toDate = value;
        return;
      case 'isOwner':
        isOwner = value;
        return;
      case 'isResident':
        isResident = value;
        return;
      case 'isRental':
        isRental = value;
        return;
      case 'userRoomStatus':
        userRoomStatus = value;
        return;
      case 'roomDetails':
        roomDetails = value;
        return;
      case 'societyDetails':
        societyDetails = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<UserRoom>> find(
    _i1.Session session, {
    UserRoomExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserRoom?> findSingleRow(
    _i1.Session session, {
    UserRoomExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserRoom?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<UserRoom>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserRoomExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserRoom>(
      where: where(UserRoom.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    UserRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    UserRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    UserRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserRoomExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserRoom>(
      where: where != null ? where(UserRoom.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserRoomExpressionBuilder = _i1.Expression Function(UserRoomTable);

class UserRoomTable extends _i1.Table {
  UserRoomTable() : super(tableName: 'user_room');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final userId = _i1.ColumnInt('userId');

  final roomId = _i1.ColumnInt('roomId');

  final fromDate = _i1.ColumnDateTime('fromDate');

  final toDate = _i1.ColumnDateTime('toDate');

  final isOwner = _i1.ColumnBool('isOwner');

  final isResident = _i1.ColumnBool('isResident');

  final isRental = _i1.ColumnBool('isRental');

  final userRoomStatus = _i1.ColumnBool('userRoomStatus');

  final roomDetails = _i1.ColumnSerializable('roomDetails');

  final societyDetails = _i1.ColumnSerializable('societyDetails');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        userId,
        roomId,
        fromDate,
        toDate,
        isOwner,
        isResident,
        isRental,
        userRoomStatus,
        roomDetails,
        societyDetails,
      ];
}

@Deprecated('Use UserRoomTable.t instead.')
UserRoomTable tUserRoom = UserRoomTable();
