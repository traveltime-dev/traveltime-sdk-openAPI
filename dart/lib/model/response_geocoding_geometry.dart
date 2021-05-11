//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseGeocodingGeometry {
  /// Returns a new [ResponseGeocodingGeometry] instance.
  ResponseGeocodingGeometry({
    @required this.type,
    this.coordinates = const [],
  });

  String type;

  List<double> coordinates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseGeocodingGeometry &&
     other.type == type &&
     other.coordinates == coordinates;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (coordinates == null ? 0 : coordinates.hashCode);

  @override
  String toString() => 'ResponseGeocodingGeometry[type=$type, coordinates=$coordinates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'coordinates'] = coordinates;
    return json;
  }

  /// Returns a new [ResponseGeocodingGeometry] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseGeocodingGeometry fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseGeocodingGeometry(
        type: json[r'type'],
        coordinates: json[r'coordinates'] == null
          ? null
          : (json[r'coordinates'] as List).cast<double>(),
    );

  static List<ResponseGeocodingGeometry> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseGeocodingGeometry>[]
      : json.map((v) => ResponseGeocodingGeometry.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseGeocodingGeometry> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseGeocodingGeometry>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseGeocodingGeometry.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingGeometry-objects as value to a dart map
  static Map<String, List<ResponseGeocodingGeometry>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseGeocodingGeometry>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseGeocodingGeometry.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

