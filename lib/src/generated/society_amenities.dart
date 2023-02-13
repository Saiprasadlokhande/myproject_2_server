/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SocietyAmenities extends _i1.TableRow {
  SocietyAmenities({
    int? id,
    required this.socId,
    required this.bikeParking,
    required this.carParking,
    required this.powerBackup,
    required this.securitySystem,
    required this.lift,
    required this.waterSupplyAllDay,
    required this.gym,
    required this.solarEnergy,
    required this.rainwaterHarvesting,
    required this.nearbyHospital,
    required this.nearbySchool,
    required this.nearbyShopping,
    required this.onSitMaintenance,
  }) : super(id);

  factory SocietyAmenities.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SocietyAmenities(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      socId: serializationManager.deserialize<int>(jsonSerialization['socId']),
      bikeParking: serializationManager
          .deserialize<bool>(jsonSerialization['bikeParking']),
      carParking: serializationManager
          .deserialize<bool>(jsonSerialization['carParking']),
      powerBackup: serializationManager
          .deserialize<bool>(jsonSerialization['powerBackup']),
      securitySystem: serializationManager
          .deserialize<bool>(jsonSerialization['securitySystem']),
      lift: serializationManager.deserialize<bool>(jsonSerialization['lift']),
      waterSupplyAllDay: serializationManager
          .deserialize<bool>(jsonSerialization['waterSupplyAllDay']),
      gym: serializationManager.deserialize<bool>(jsonSerialization['gym']),
      solarEnergy: serializationManager
          .deserialize<bool>(jsonSerialization['solarEnergy']),
      rainwaterHarvesting: serializationManager
          .deserialize<bool>(jsonSerialization['rainwaterHarvesting']),
      nearbyHospital: serializationManager
          .deserialize<bool>(jsonSerialization['nearbyHospital']),
      nearbySchool: serializationManager
          .deserialize<bool>(jsonSerialization['nearbySchool']),
      nearbyShopping: serializationManager
          .deserialize<bool>(jsonSerialization['nearbyShopping']),
      onSitMaintenance: serializationManager
          .deserialize<bool>(jsonSerialization['onSitMaintenance']),
    );
  }

  static final t = SocietyAmenitiesTable();

  int socId;

  bool bikeParking;

  bool carParking;

  bool powerBackup;

  bool securitySystem;

  bool lift;

  bool waterSupplyAllDay;

  bool gym;

  bool solarEnergy;

  bool rainwaterHarvesting;

  bool nearbyHospital;

  bool nearbySchool;

  bool nearbyShopping;

  bool onSitMaintenance;

  @override
  String get tableName => 'soc_amenities';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'socId': socId,
      'bikeParking': bikeParking,
      'carParking': carParking,
      'powerBackup': powerBackup,
      'securitySystem': securitySystem,
      'lift': lift,
      'waterSupplyAllDay': waterSupplyAllDay,
      'gym': gym,
      'solarEnergy': solarEnergy,
      'rainwaterHarvesting': rainwaterHarvesting,
      'nearbyHospital': nearbyHospital,
      'nearbySchool': nearbySchool,
      'nearbyShopping': nearbyShopping,
      'onSitMaintenance': onSitMaintenance,
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
      case 'bikeParking':
        bikeParking = value;
        return;
      case 'carParking':
        carParking = value;
        return;
      case 'powerBackup':
        powerBackup = value;
        return;
      case 'securitySystem':
        securitySystem = value;
        return;
      case 'lift':
        lift = value;
        return;
      case 'waterSupplyAllDay':
        waterSupplyAllDay = value;
        return;
      case 'gym':
        gym = value;
        return;
      case 'solarEnergy':
        solarEnergy = value;
        return;
      case 'rainwaterHarvesting':
        rainwaterHarvesting = value;
        return;
      case 'nearbyHospital':
        nearbyHospital = value;
        return;
      case 'nearbySchool':
        nearbySchool = value;
        return;
      case 'nearbyShopping':
        nearbyShopping = value;
        return;
      case 'onSitMaintenance':
        onSitMaintenance = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SocietyAmenities>> find(
    _i1.Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocietyAmenities?> findSingleRow(
    _i1.Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SocietyAmenities?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SocietyAmenities>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SocietyAmenitiesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SocietyAmenities>(
      where: where(SocietyAmenities.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SocietyAmenities row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SocietyAmenities row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SocietyAmenities row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SocietyAmenitiesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SocietyAmenities>(
      where: where != null ? where(SocietyAmenities.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SocietyAmenitiesExpressionBuilder = _i1.Expression Function(
    SocietyAmenitiesTable);

class SocietyAmenitiesTable extends _i1.Table {
  SocietyAmenitiesTable() : super(tableName: 'soc_amenities');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final socId = _i1.ColumnInt('socId');

  final bikeParking = _i1.ColumnBool('bikeParking');

  final carParking = _i1.ColumnBool('carParking');

  final powerBackup = _i1.ColumnBool('powerBackup');

  final securitySystem = _i1.ColumnBool('securitySystem');

  final lift = _i1.ColumnBool('lift');

  final waterSupplyAllDay = _i1.ColumnBool('waterSupplyAllDay');

  final gym = _i1.ColumnBool('gym');

  final solarEnergy = _i1.ColumnBool('solarEnergy');

  final rainwaterHarvesting = _i1.ColumnBool('rainwaterHarvesting');

  final nearbyHospital = _i1.ColumnBool('nearbyHospital');

  final nearbySchool = _i1.ColumnBool('nearbySchool');

  final nearbyShopping = _i1.ColumnBool('nearbyShopping');

  final onSitMaintenance = _i1.ColumnBool('onSitMaintenance');

  @override
  List<_i1.Column> get columns => [
        id,
        socId,
        bikeParking,
        carParking,
        powerBackup,
        securitySystem,
        lift,
        waterSupplyAllDay,
        gym,
        solarEnergy,
        rainwaterHarvesting,
        nearbyHospital,
        nearbySchool,
        nearbyShopping,
        onSitMaintenance,
      ];
}

@Deprecated('Use SocietyAmenitiesTable.t instead.')
SocietyAmenitiesTable tSocietyAmenities = SocietyAmenitiesTable();
