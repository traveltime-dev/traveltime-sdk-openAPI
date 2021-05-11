//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterProperties {
  /// Returns a new [ResponseTimeFilterProperties] instance.
  ResponseTimeFilterProperties({
    this.travelTime,
    this.distance,
    this.distanceBreakdown = const [],
    this.fares,
    this.route,
  });

  int travelTime;

  int distance;

  List<ResponseDistanceBreakdownItem> distanceBreakdown;

  ResponseFares fares;

  ResponseRoute route;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterProperties &&
     other.travelTime == travelTime &&
     other.distance == distance &&
     other.distanceBreakdown == distanceBreakdown &&
     other.fares == fares &&
     other.route == route;

  @override
  int get hashCode =>
    (travelTime == null ? 0 : travelTime.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (distanceBreakdown == null ? 0 : distanceBreakdown.hashCode) +
    (fares == null ? 0 : fares.hashCode) +
    (route == null ? 0 : route.hashCode);

  @override
  String toString() => 'ResponseTimeFilterProperties[travelTime=$travelTime, distance=$distance, distanceBreakdown=$distanceBreakdown, fares=$fares, route=$route]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (travelTime != null) {
      json[r'travel_time'] = travelTime;
    }
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (distanceBreakdown != null) {
      json[r'distance_breakdown'] = distanceBreakdown;
    }
    if (fares != null) {
      json[r'fares'] = fares;
    }
    if (route != null) {
      json[r'route'] = route;
    }
    return json;
  }

  /// Returns a new [ResponseTimeFilterProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterProperties(
        travelTime: json[r'travel_time'],
        distance: json[r'distance'],
        distanceBreakdown: ResponseDistanceBreakdownItem.listFromJson(json[r'distance_breakdown']),
        fares: ResponseFares.fromJson(json[r'fares']),
        route: ResponseRoute.fromJson(json[r'route']),
    );

  static List<ResponseTimeFilterProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterProperties>[]
      : json.map((v) => ResponseTimeFilterProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

