//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoute {
  /// Returns a new [ResponseRoute] instance.
  ResponseRoute({
    @required this.departureTime,
    @required this.arrivalTime,
    this.parts = const [],
  });

  DateTime departureTime;

  DateTime arrivalTime;

  List<ResponseRoutePart> parts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoute &&
     other.departureTime == departureTime &&
     other.arrivalTime == arrivalTime &&
     other.parts == parts;

  @override
  int get hashCode =>
    (departureTime == null ? 0 : departureTime.hashCode) +
    (arrivalTime == null ? 0 : arrivalTime.hashCode) +
    (parts == null ? 0 : parts.hashCode);

  @override
  String toString() => 'ResponseRoute[departureTime=$departureTime, arrivalTime=$arrivalTime, parts=$parts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'departure_time'] = departureTime.toUtc().toIso8601String();
      json[r'arrival_time'] = arrivalTime.toUtc().toIso8601String();
      json[r'parts'] = parts;
    return json;
  }

  /// Returns a new [ResponseRoute] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoute fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoute(
        departureTime: json[r'departure_time'] == null
          ? null
          : DateTime.parse(json[r'departure_time']),
        arrivalTime: json[r'arrival_time'] == null
          ? null
          : DateTime.parse(json[r'arrival_time']),
        parts: ResponseRoutePart.listFromJson(json[r'parts']),
    );

  static List<ResponseRoute> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoute>[]
      : json.map((v) => ResponseRoute.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoute> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoute>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoute.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoute-objects as value to a dart map
  static Map<String, List<ResponseRoute>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoute>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoute.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

