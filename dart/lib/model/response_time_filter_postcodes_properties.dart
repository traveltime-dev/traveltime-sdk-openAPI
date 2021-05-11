//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodesProperties {
  /// Returns a new [ResponseTimeFilterPostcodesProperties] instance.
  ResponseTimeFilterPostcodesProperties({
    this.travelTime,
    this.distance,
  });

  int travelTime;

  int distance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodesProperties &&
     other.travelTime == travelTime &&
     other.distance == distance;

  @override
  int get hashCode =>
    (travelTime == null ? 0 : travelTime.hashCode) +
    (distance == null ? 0 : distance.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodesProperties[travelTime=$travelTime, distance=$distance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (travelTime != null) {
      json[r'travel_time'] = travelTime;
    }
    if (distance != null) {
      json[r'distance'] = distance;
    }
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodesProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodesProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodesProperties(
        travelTime: json[r'travel_time'],
        distance: json[r'distance'],
    );

  static List<ResponseTimeFilterPostcodesProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodesProperties>[]
      : json.map((v) => ResponseTimeFilterPostcodesProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodesProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodesProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodesProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodesProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodesProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodesProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodesProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

