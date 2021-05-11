//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTransportation {
  /// Returns a new [RequestTransportation] instance.
  RequestTransportation({
    @required this.type,
    this.ptChangeDelay,
    this.walkingTime,
    this.drivingTimeToStation,
    this.parkingTime,
    this.boardingTime,
  });

  RequestTransportationTypeEnum type;

  int ptChangeDelay;

  int walkingTime;

  int drivingTimeToStation;

  int parkingTime;

  int boardingTime;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTransportation &&
     other.type == type &&
     other.ptChangeDelay == ptChangeDelay &&
     other.walkingTime == walkingTime &&
     other.drivingTimeToStation == drivingTimeToStation &&
     other.parkingTime == parkingTime &&
     other.boardingTime == boardingTime;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (ptChangeDelay == null ? 0 : ptChangeDelay.hashCode) +
    (walkingTime == null ? 0 : walkingTime.hashCode) +
    (drivingTimeToStation == null ? 0 : drivingTimeToStation.hashCode) +
    (parkingTime == null ? 0 : parkingTime.hashCode) +
    (boardingTime == null ? 0 : boardingTime.hashCode);

  @override
  String toString() => 'RequestTransportation[type=$type, ptChangeDelay=$ptChangeDelay, walkingTime=$walkingTime, drivingTimeToStation=$drivingTimeToStation, parkingTime=$parkingTime, boardingTime=$boardingTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
    if (ptChangeDelay != null) {
      json[r'pt_change_delay'] = ptChangeDelay;
    }
    if (walkingTime != null) {
      json[r'walking_time'] = walkingTime;
    }
    if (drivingTimeToStation != null) {
      json[r'driving_time_to_station'] = drivingTimeToStation;
    }
    if (parkingTime != null) {
      json[r'parking_time'] = parkingTime;
    }
    if (boardingTime != null) {
      json[r'boarding_time'] = boardingTime;
    }
    return json;
  }

  /// Returns a new [RequestTransportation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTransportation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTransportation(
        type: RequestTransportationTypeEnum.fromJson(json[r'type']),
        ptChangeDelay: json[r'pt_change_delay'],
        walkingTime: json[r'walking_time'],
        drivingTimeToStation: json[r'driving_time_to_station'],
        parkingTime: json[r'parking_time'],
        boardingTime: json[r'boarding_time'],
    );

  static List<RequestTransportation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTransportation>[]
      : json.map((v) => RequestTransportation.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTransportation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTransportation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTransportation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTransportation-objects as value to a dart map
  static Map<String, List<RequestTransportation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTransportation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTransportation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class RequestTransportationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RequestTransportationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cycling = RequestTransportationTypeEnum._(r'cycling');
  static const driving = RequestTransportationTypeEnum._(r'driving');
  static const drivingPlusTrain = RequestTransportationTypeEnum._(r'driving+train');
  static const publicTransport = RequestTransportationTypeEnum._(r'public_transport');
  static const walking = RequestTransportationTypeEnum._(r'walking');
  static const coach = RequestTransportationTypeEnum._(r'coach');
  static const bus = RequestTransportationTypeEnum._(r'bus');
  static const train = RequestTransportationTypeEnum._(r'train');
  static const ferry = RequestTransportationTypeEnum._(r'ferry');
  static const drivingPlusFerry = RequestTransportationTypeEnum._(r'driving+ferry');
  static const cyclingPlusFerry = RequestTransportationTypeEnum._(r'cycling+ferry');

  /// List of all possible values in this [enum][RequestTransportationTypeEnum].
  static const values = <RequestTransportationTypeEnum>[
    cycling,
    driving,
    drivingPlusTrain,
    publicTransport,
    walking,
    coach,
    bus,
    train,
    ferry,
    drivingPlusFerry,
    cyclingPlusFerry,
  ];

  static RequestTransportationTypeEnum fromJson(dynamic value) =>
    RequestTransportationTypeEnumTypeTransformer().decode(value);

  static List<RequestTransportationTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTransportationTypeEnum>[]
      : json
          .map((value) => RequestTransportationTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTransportationTypeEnum] to String,
/// and [decode] dynamic data back to [RequestTransportationTypeEnum].
class RequestTransportationTypeEnumTypeTransformer {
  const RequestTransportationTypeEnumTypeTransformer._();

  factory RequestTransportationTypeEnumTypeTransformer() => _instance ??= RequestTransportationTypeEnumTypeTransformer._();

  String encode(RequestTransportationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTransportationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTransportationTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'cycling': return RequestTransportationTypeEnum.cycling;
      case r'driving': return RequestTransportationTypeEnum.driving;
      case r'driving+train': return RequestTransportationTypeEnum.drivingPlusTrain;
      case r'public_transport': return RequestTransportationTypeEnum.publicTransport;
      case r'walking': return RequestTransportationTypeEnum.walking;
      case r'coach': return RequestTransportationTypeEnum.coach;
      case r'bus': return RequestTransportationTypeEnum.bus;
      case r'train': return RequestTransportationTypeEnum.train;
      case r'ferry': return RequestTransportationTypeEnum.ferry;
      case r'driving+ferry': return RequestTransportationTypeEnum.drivingPlusFerry;
      case r'cycling+ferry': return RequestTransportationTypeEnum.cyclingPlusFerry;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTransportationTypeEnumTypeTransformer] instance.
  static RequestTransportationTypeEnumTypeTransformer _instance;
}

