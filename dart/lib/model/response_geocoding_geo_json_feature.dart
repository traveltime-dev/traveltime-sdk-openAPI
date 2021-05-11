//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseGeocodingGeoJsonFeature {
  /// Returns a new [ResponseGeocodingGeoJsonFeature] instance.
  ResponseGeocodingGeoJsonFeature({
    @required this.type,
    @required this.geometry,
    @required this.properties,
  });

  String type;

  ResponseGeocodingGeometry geometry;

  ResponseGeocodingProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseGeocodingGeoJsonFeature &&
     other.type == type &&
     other.geometry == geometry &&
     other.properties == properties;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (geometry == null ? 0 : geometry.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseGeocodingGeoJsonFeature[type=$type, geometry=$geometry, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'geometry'] = geometry;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseGeocodingGeoJsonFeature] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseGeocodingGeoJsonFeature fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseGeocodingGeoJsonFeature(
        type: json[r'type'],
        geometry: ResponseGeocodingGeometry.fromJson(json[r'geometry']),
        properties: ResponseGeocodingProperties.fromJson(json[r'properties']),
    );

  static List<ResponseGeocodingGeoJsonFeature> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseGeocodingGeoJsonFeature>[]
      : json.map((v) => ResponseGeocodingGeoJsonFeature.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseGeocodingGeoJsonFeature> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseGeocodingGeoJsonFeature>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseGeocodingGeoJsonFeature.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingGeoJsonFeature-objects as value to a dart map
  static Map<String, List<ResponseGeocodingGeoJsonFeature>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseGeocodingGeoJsonFeature>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseGeocodingGeoJsonFeature.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

