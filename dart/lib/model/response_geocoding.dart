//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseGeocoding {
  /// Returns a new [ResponseGeocoding] instance.
  ResponseGeocoding({
    @required this.type,
    this.features = const [],
  });

  String type;

  List<ResponseGeocodingGeoJsonFeature> features;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseGeocoding &&
     other.type == type &&
     other.features == features;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (features == null ? 0 : features.hashCode);

  @override
  String toString() => 'ResponseGeocoding[type=$type, features=$features]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'features'] = features;
    return json;
  }

  /// Returns a new [ResponseGeocoding] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseGeocoding fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseGeocoding(
        type: json[r'type'],
        features: ResponseGeocodingGeoJsonFeature.listFromJson(json[r'features']),
    );

  static List<ResponseGeocoding> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseGeocoding>[]
      : json.map((v) => ResponseGeocoding.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseGeocoding> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseGeocoding>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseGeocoding.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocoding-objects as value to a dart map
  static Map<String, List<ResponseGeocoding>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseGeocoding>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseGeocoding.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

