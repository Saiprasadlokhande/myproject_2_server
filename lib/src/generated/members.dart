/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Members extends _i1.TableRow {
  Members({
    int? id,
    required this.name,
    required this.age,
    required this.mobile,
    required this.email,
    required this.aadharNo,
    required this.panNo,
    required this.dob,
    required this.blockCount,
    required this.mobileModel,
    required this.status,
    required this.isActive,
  }) : super(id);

  factory Members.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Members(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      age: serializationManager.deserialize<int>(jsonSerialization['age']),
      mobile:
          serializationManager.deserialize<String>(jsonSerialization['mobile']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      aadharNo: serializationManager
          .deserialize<String>(jsonSerialization['aadharNo']),
      panNo:
          serializationManager.deserialize<String>(jsonSerialization['panNo']),
      dob: serializationManager.deserialize<DateTime>(jsonSerialization['dob']),
      blockCount: serializationManager
          .deserialize<int>(jsonSerialization['blockCount']),
      mobileModel: serializationManager
          .deserialize<String>(jsonSerialization['mobileModel']),
      status:
          serializationManager.deserialize<bool>(jsonSerialization['status']),
      isActive:
          serializationManager.deserialize<bool>(jsonSerialization['isActive']),
    );
  }

  static final t = MembersTable();

  String name;

  int age;

  String mobile;

  String email;

  String aadharNo;

  String panNo;

  DateTime dob;

  int blockCount;

  String mobileModel;

  bool status;

  bool isActive;

  @override
  String get tableName => 'members';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob,
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob,
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'mobile': mobile,
      'email': email,
      'aadharNo': aadharNo,
      'panNo': panNo,
      'dob': dob,
      'blockCount': blockCount,
      'mobileModel': mobileModel,
      'status': status,
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
      case 'name':
        name = value;
        return;
      case 'age':
        age = value;
        return;
      case 'mobile':
        mobile = value;
        return;
      case 'email':
        email = value;
        return;
      case 'aadharNo':
        aadharNo = value;
        return;
      case 'panNo':
        panNo = value;
        return;
      case 'dob':
        dob = value;
        return;
      case 'blockCount':
        blockCount = value;
        return;
      case 'mobileModel':
        mobileModel = value;
        return;
      case 'status':
        status = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Members>> find(
    _i1.Session session, {
    MembersExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Members>(
      where: where != null ? where(Members.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Members?> findSingleRow(
    _i1.Session session, {
    MembersExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Members>(
      where: where != null ? where(Members.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Members?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Members>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MembersExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Members>(
      where: where(Members.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Members row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Members row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Members row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MembersExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Members>(
      where: where != null ? where(Members.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MembersExpressionBuilder = _i1.Expression Function(MembersTable);

class MembersTable extends _i1.Table {
  MembersTable() : super(tableName: 'members');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final age = _i1.ColumnInt('age');

  final mobile = _i1.ColumnString('mobile');

  final email = _i1.ColumnString('email');

  final aadharNo = _i1.ColumnString('aadharNo');

  final panNo = _i1.ColumnString('panNo');

  final dob = _i1.ColumnDateTime('dob');

  final blockCount = _i1.ColumnInt('blockCount');

  final mobileModel = _i1.ColumnString('mobileModel');

  final status = _i1.ColumnBool('status');

  final isActive = _i1.ColumnBool('isActive');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        age,
        mobile,
        email,
        aadharNo,
        panNo,
        dob,
        blockCount,
        mobileModel,
        status,
        isActive,
      ];
}

@Deprecated('Use MembersTable.t instead.')
MembersTable tMembers = MembersTable();
