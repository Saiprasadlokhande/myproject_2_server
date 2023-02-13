/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SocBody extends _i1.TableRow {
  SocBody({
    int? id,
    required this.socId,
    required this.chairman,
    required this.secretary,
    required this.treasurer,
    required this.viceChairman,
    required this.viceSecretary,
    required this.viceTreasurer,
    required this.members,
    required this.year,
  }) : super(id);

  factory SocBody.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SocBody(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      chairman:
          serializationManager.deserialize<int>(jsonSerialization['chairman']),
      secretary:
          serializationManager.deserialize<int>(jsonSerialization['secretary']),
      treasurer:
          serializationManager.deserialize<int>(jsonSerialization['treasurer']),
      viceChairman: serializationManager
          .deserialize<int>(jsonSerialization['viceChairman']),
      viceSecretary: serializationManager
          .deserialize<int>(jsonSerialization['viceSecretary']),
      viceTreasurer: serializationManager
          .deserialize<int>(jsonSerialization['viceTreasurer']),
      members: serializationManager
          .deserialize<List<int>>(jsonSerialization['members']),
      year: serializationManager.deserialize<int>(jsonSerialization['year']),
    );
  }

  static final t = SocBodyTable();

  int socId;

  int chairman;

  int secretary;

  int treasurer;

  int viceChairman;

  int viceSecretary;

  int viceTreasurer;

  List<int> members;

  int year;

  @override
  String get tableName => 'soc_body';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'chairman': chairman,
      'secretary': secretary,
      'treasurer': treasurer,
      'viceChairman': viceChairman,
      'viceSecretary': viceSecretary,
      'viceTreasurer': viceTreasurer,
      'members': members,
      'year': year,
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
      case 'chairman':
        chairman = value;
        return;
      case 'secretary':
        secretary = value;
        return;
      case 'treasurer':
        treasurer = value;
        return;
      case 'viceChairman':
        viceChairman = value;
        return;
      case 'viceSecretary':
        viceSecretary = value;
        return;
      case 'viceTreasurer':
        viceTreasurer = value;
        return;
      case 'members':
        members = value;
        return;
      case 'year':
        year = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SocBody>> find(
    _i1.Session session, {
    SocBodyExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocBody?> findSingleRow(
    _i1.Session session, {
    SocBodyExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocBody?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SocBody>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SocBodyExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SocBody>(
      where: where(SocBody.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SocBody row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SocBody row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SocBody row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SocBodyExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SocBody>(
      where: where != null ? where(SocBody.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocBodyExpressionBuilder = _i1.Expression Function(SocBodyTable);

class SocBodyTable extends _i1.Table {
  SocBodyTable() : super(tableName: 'soc_body');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final chairman = _i1.ColumnInt('chairman');

  final secretary = _i1.ColumnInt('secretary');

  final treasurer = _i1.ColumnInt('treasurer');

  final viceChairman = _i1.ColumnInt('viceChairman');

  final viceSecretary = _i1.ColumnInt('viceSecretary');

  final viceTreasurer = _i1.ColumnInt('viceTreasurer');

  final members = _i1.ColumnSerializable('members');

  final year = _i1.ColumnInt('year');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        chairman,
        secretary,
        treasurer,
        viceChairman,
        viceSecretary,
        viceTreasurer,
        members,
        year,
      ];
}

@Deprecated('Use SocBodyTable.t instead.')
SocBodyTable tSocBody = SocBodyTable();
