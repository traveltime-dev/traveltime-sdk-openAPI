//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcode {
  /// Returns a new [ResponseTimeFilterPostcode] instance.
  ResponseTimeFilterPostcode({
    @required this.code,
    this.properties = const [],
  });

  String code;

  List<ResponseTimeFilterPostcodesProperties> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcode &&
     other.code == code &&
     other.properties == properties;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcode[code=$code, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcode] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcode fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcode(
        code: json[r'code'],
        properties: ResponseTimeFilterPostcodesProperties.listFromJson(json[r'properties']),
    );

  static List<ResponseTimeFilterPostcode> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcode>[]
      : json.map((v) => ResponseTimeFilterPostcode.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcode> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcode>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcode.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcode-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcode>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcode>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcode.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

