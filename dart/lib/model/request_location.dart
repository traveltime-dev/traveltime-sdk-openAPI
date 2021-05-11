//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestLocation {
  /// Returns a new [RequestLocation] instance.
  RequestLocation({
    @required this.id,
    @required this.coords,
  });

  String id;

  Coords coords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestLocation &&
     other.id == id &&
     other.coords == coords;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (coords == null ? 0 : coords.hashCode);

  @override
  String toString() => 'RequestLocation[id=$id, coords=$coords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'coords'] = coords;
    return json;
  }

  /// Returns a new [RequestLocation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestLocation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestLocation(
        id: json[r'id'],
        coords: Coords.fromJson(json[r'coords']),
    );

  static List<RequestLocation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestLocation>[]
      : json.map((v) => RequestLocation.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestLocation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestLocation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestLocation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestLocation-objects as value to a dart map
  static Map<String, List<RequestLocation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestLocation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestLocation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

