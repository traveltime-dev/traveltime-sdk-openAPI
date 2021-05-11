//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterLocation {
  /// Returns a new [ResponseTimeFilterLocation] instance.
  ResponseTimeFilterLocation({
    @required this.id,
    this.properties = const [],
  });

  String id;

  List<ResponseTimeFilterProperties> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterLocation &&
     other.id == id &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeFilterLocation[id=$id, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeFilterLocation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterLocation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterLocation(
        id: json[r'id'],
        properties: ResponseTimeFilterProperties.listFromJson(json[r'properties']),
    );

  static List<ResponseTimeFilterLocation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterLocation>[]
      : json.map((v) => ResponseTimeFilterLocation.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterLocation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterLocation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterLocation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterLocation-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterLocation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterLocation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterLocation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

