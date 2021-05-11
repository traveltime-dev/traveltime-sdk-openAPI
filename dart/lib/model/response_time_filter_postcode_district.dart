//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeDistrict {
  /// Returns a new [ResponseTimeFilterPostcodeDistrict] instance.
  ResponseTimeFilterPostcodeDistrict({
    @required this.code,
    @required this.properties,
  });

  String code;

  ResponseTimeFilterPostcodeDistrictProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeDistrict &&
     other.code == code &&
     other.properties == properties;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeDistrict[code=$code, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeDistrict] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeDistrict fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeDistrict(
        code: json[r'code'],
        properties: ResponseTimeFilterPostcodeDistrictProperties.fromJson(json[r'properties']),
    );

  static List<ResponseTimeFilterPostcodeDistrict> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeDistrict>[]
      : json.map((v) => ResponseTimeFilterPostcodeDistrict.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeDistrict> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeDistrict>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeDistrict.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrict-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrict>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeDistrict>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeDistrict.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

