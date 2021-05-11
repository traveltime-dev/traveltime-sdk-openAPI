//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeSector {
  /// Returns a new [ResponseTimeFilterPostcodeSector] instance.
  ResponseTimeFilterPostcodeSector({
    @required this.code,
    @required this.properties,
  });

  String code;

  ResponseTimeFilterPostcodeSectorProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeSector &&
     other.code == code &&
     other.properties == properties;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeSector[code=$code, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeSector] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeSector fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeSector(
        code: json[r'code'],
        properties: ResponseTimeFilterPostcodeSectorProperties.fromJson(json[r'properties']),
    );

  static List<ResponseTimeFilterPostcodeSector> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeSector>[]
      : json.map((v) => ResponseTimeFilterPostcodeSector.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeSector> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeSector>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeSector.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSector-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSector>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeSector>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeSector.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

