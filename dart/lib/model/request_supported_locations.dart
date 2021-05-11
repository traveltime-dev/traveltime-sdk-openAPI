//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestSupportedLocations {
  /// Returns a new [RequestSupportedLocations] instance.
  RequestSupportedLocations({
    this.locations = const [],
  });

  List<RequestLocation> locations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestSupportedLocations &&
     other.locations == locations;

  @override
  int get hashCode =>
    (locations == null ? 0 : locations.hashCode);

  @override
  String toString() => 'RequestSupportedLocations[locations=$locations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locations'] = locations;
    return json;
  }

  /// Returns a new [RequestSupportedLocations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestSupportedLocations fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestSupportedLocations(
        locations: RequestLocation.listFromJson(json[r'locations']),
    );

  static List<RequestSupportedLocations> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestSupportedLocations>[]
      : json.map((v) => RequestSupportedLocations.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestSupportedLocations>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestSupportedLocations.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestSupportedLocations-objects as value to a dart map
  static Map<String, List<RequestSupportedLocations>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestSupportedLocations>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestSupportedLocations.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

