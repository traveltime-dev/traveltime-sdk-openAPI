//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoutesProperties {
  /// Returns a new [ResponseRoutesProperties] instance.
  ResponseRoutesProperties({
    this.travelTime,
    this.distance,
    this.fares,
    this.route,
  });

  int travelTime;

  int distance;

  ResponseFares fares;

  ResponseRoute route;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoutesProperties &&
     other.travelTime == travelTime &&
     other.distance == distance &&
     other.fares == fares &&
     other.route == route;

  @override
  int get hashCode =>
    (travelTime == null ? 0 : travelTime.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (fares == null ? 0 : fares.hashCode) +
    (route == null ? 0 : route.hashCode);

  @override
  String toString() => 'ResponseRoutesProperties[travelTime=$travelTime, distance=$distance, fares=$fares, route=$route]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (travelTime != null) {
      json[r'travel_time'] = travelTime;
    }
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (fares != null) {
      json[r'fares'] = fares;
    }
    if (route != null) {
      json[r'route'] = route;
    }
    return json;
  }

  /// Returns a new [ResponseRoutesProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoutesProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoutesProperties(
        travelTime: json[r'travel_time'],
        distance: json[r'distance'],
        fares: ResponseFares.fromJson(json[r'fares']),
        route: ResponseRoute.fromJson(json[r'route']),
    );

  static List<ResponseRoutesProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutesProperties>[]
      : json.map((v) => ResponseRoutesProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoutesProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoutesProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoutesProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesProperties-objects as value to a dart map
  static Map<String, List<ResponseRoutesProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoutesProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoutesProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

