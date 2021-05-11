//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoutePart {
  /// Returns a new [ResponseRoutePart] instance.
  ResponseRoutePart({
    @required this.id,
    @required this.type,
    @required this.mode,
    @required this.directions,
    @required this.distance,
    @required this.travelTime,
    this.coords = const [],
    this.direction,
    this.road,
    this.turn,
    this.line,
    this.departureStation,
    this.arrivalStation,
    this.departsAt,
    this.arrivesAt,
    this.numStops,
  });

  String id;

  ResponseRoutePartTypeEnum type;

  ResponseTransportationMode mode;

  String directions;

  int distance;

  int travelTime;

  List<Coords> coords;

  String direction;

  String road;

  String turn;

  String line;

  String departureStation;

  String arrivalStation;

  String departsAt;

  String arrivesAt;

  int numStops;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoutePart &&
     other.id == id &&
     other.type == type &&
     other.mode == mode &&
     other.directions == directions &&
     other.distance == distance &&
     other.travelTime == travelTime &&
     other.coords == coords &&
     other.direction == direction &&
     other.road == road &&
     other.turn == turn &&
     other.line == line &&
     other.departureStation == departureStation &&
     other.arrivalStation == arrivalStation &&
     other.departsAt == departsAt &&
     other.arrivesAt == arrivesAt &&
     other.numStops == numStops;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (mode == null ? 0 : mode.hashCode) +
    (directions == null ? 0 : directions.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (coords == null ? 0 : coords.hashCode) +
    (direction == null ? 0 : direction.hashCode) +
    (road == null ? 0 : road.hashCode) +
    (turn == null ? 0 : turn.hashCode) +
    (line == null ? 0 : line.hashCode) +
    (departureStation == null ? 0 : departureStation.hashCode) +
    (arrivalStation == null ? 0 : arrivalStation.hashCode) +
    (departsAt == null ? 0 : departsAt.hashCode) +
    (arrivesAt == null ? 0 : arrivesAt.hashCode) +
    (numStops == null ? 0 : numStops.hashCode);

  @override
  String toString() => 'ResponseRoutePart[id=$id, type=$type, mode=$mode, directions=$directions, distance=$distance, travelTime=$travelTime, coords=$coords, direction=$direction, road=$road, turn=$turn, line=$line, departureStation=$departureStation, arrivalStation=$arrivalStation, departsAt=$departsAt, arrivesAt=$arrivesAt, numStops=$numStops]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'type'] = type;
      json[r'mode'] = mode;
      json[r'directions'] = directions;
      json[r'distance'] = distance;
      json[r'travel_time'] = travelTime;
      json[r'coords'] = coords;
    if (direction != null) {
      json[r'direction'] = direction;
    }
    if (road != null) {
      json[r'road'] = road;
    }
    if (turn != null) {
      json[r'turn'] = turn;
    }
    if (line != null) {
      json[r'line'] = line;
    }
    if (departureStation != null) {
      json[r'departure_station'] = departureStation;
    }
    if (arrivalStation != null) {
      json[r'arrival_station'] = arrivalStation;
    }
    if (departsAt != null) {
      json[r'departs_at'] = departsAt;
    }
    if (arrivesAt != null) {
      json[r'arrives_at'] = arrivesAt;
    }
    if (numStops != null) {
      json[r'num_stops'] = numStops;
    }
    return json;
  }

  /// Returns a new [ResponseRoutePart] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoutePart fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoutePart(
        id: json[r'id'],
        type: ResponseRoutePartTypeEnum.fromJson(json[r'type']),
        mode: ResponseTransportationMode.fromJson(json[r'mode']),
        directions: json[r'directions'],
        distance: json[r'distance'],
        travelTime: json[r'travel_time'],
        coords: Coords.listFromJson(json[r'coords']),
        direction: json[r'direction'],
        road: json[r'road'],
        turn: json[r'turn'],
        line: json[r'line'],
        departureStation: json[r'departure_station'],
        arrivalStation: json[r'arrival_station'],
        departsAt: json[r'departs_at'],
        arrivesAt: json[r'arrives_at'],
        numStops: json[r'num_stops'],
    );

  static List<ResponseRoutePart> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutePart>[]
      : json.map((v) => ResponseRoutePart.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoutePart> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoutePart>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoutePart.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutePart-objects as value to a dart map
  static Map<String, List<ResponseRoutePart>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoutePart>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoutePart.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ResponseRoutePartTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ResponseRoutePartTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const basic = ResponseRoutePartTypeEnum._(r'basic');
  static const startEnd = ResponseRoutePartTypeEnum._(r'start_end');
  static const road = ResponseRoutePartTypeEnum._(r'road');
  static const publicTransport = ResponseRoutePartTypeEnum._(r'public_transport');

  /// List of all possible values in this [enum][ResponseRoutePartTypeEnum].
  static const values = <ResponseRoutePartTypeEnum>[
    basic,
    startEnd,
    road,
    publicTransport,
  ];

  static ResponseRoutePartTypeEnum fromJson(dynamic value) =>
    ResponseRoutePartTypeEnumTypeTransformer().decode(value);

  static List<ResponseRoutePartTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutePartTypeEnum>[]
      : json
          .map((value) => ResponseRoutePartTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResponseRoutePartTypeEnum] to String,
/// and [decode] dynamic data back to [ResponseRoutePartTypeEnum].
class ResponseRoutePartTypeEnumTypeTransformer {
  const ResponseRoutePartTypeEnumTypeTransformer._();

  factory ResponseRoutePartTypeEnumTypeTransformer() => _instance ??= ResponseRoutePartTypeEnumTypeTransformer._();

  String encode(ResponseRoutePartTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResponseRoutePartTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResponseRoutePartTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'basic': return ResponseRoutePartTypeEnum.basic;
      case r'start_end': return ResponseRoutePartTypeEnum.startEnd;
      case r'road': return ResponseRoutePartTypeEnum.road;
      case r'public_transport': return ResponseRoutePartTypeEnum.publicTransport;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResponseRoutePartTypeEnumTypeTransformer] instance.
  static ResponseRoutePartTypeEnumTypeTransformer _instance;
}

