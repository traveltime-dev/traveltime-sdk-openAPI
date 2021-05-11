//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseSupportedLocation {
  /// Returns a new [ResponseSupportedLocation] instance.
  ResponseSupportedLocation({
    @required this.id,
    @required this.mapName,
  });

  String id;

  String mapName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseSupportedLocation &&
     other.id == id &&
     other.mapName == mapName;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (mapName == null ? 0 : mapName.hashCode);

  @override
  String toString() => 'ResponseSupportedLocation[id=$id, mapName=$mapName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'map_name'] = mapName;
    return json;
  }

  /// Returns a new [ResponseSupportedLocation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseSupportedLocation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseSupportedLocation(
        id: json[r'id'],
        mapName: json[r'map_name'],
    );

  static List<ResponseSupportedLocation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseSupportedLocation>[]
      : json.map((v) => ResponseSupportedLocation.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseSupportedLocation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseSupportedLocation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseSupportedLocation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseSupportedLocation-objects as value to a dart map
  static Map<String, List<ResponseSupportedLocation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseSupportedLocation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseSupportedLocation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

