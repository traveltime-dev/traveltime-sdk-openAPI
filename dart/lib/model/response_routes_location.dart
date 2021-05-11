//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoutesLocation {
  /// Returns a new [ResponseRoutesLocation] instance.
  ResponseRoutesLocation({
    @required this.id,
    this.properties = const [],
  });

  String id;

  List<ResponseRoutesProperties> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoutesLocation &&
     other.id == id &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseRoutesLocation[id=$id, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseRoutesLocation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoutesLocation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoutesLocation(
        id: json[r'id'],
        properties: ResponseRoutesProperties.listFromJson(json[r'properties']),
    );

  static List<ResponseRoutesLocation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutesLocation>[]
      : json.map((v) => ResponseRoutesLocation.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoutesLocation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoutesLocation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoutesLocation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesLocation-objects as value to a dart map
  static Map<String, List<ResponseRoutesLocation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoutesLocation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoutesLocation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

