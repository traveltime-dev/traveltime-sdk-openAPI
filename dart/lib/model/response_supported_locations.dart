//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseSupportedLocations {
  /// Returns a new [ResponseSupportedLocations] instance.
  ResponseSupportedLocations({
    this.locations = const [],
    this.unsupportedLocations = const [],
  });

  List<ResponseSupportedLocation> locations;

  List<String> unsupportedLocations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseSupportedLocations &&
     other.locations == locations &&
     other.unsupportedLocations == unsupportedLocations;

  @override
  int get hashCode =>
    (locations == null ? 0 : locations.hashCode) +
    (unsupportedLocations == null ? 0 : unsupportedLocations.hashCode);

  @override
  String toString() => 'ResponseSupportedLocations[locations=$locations, unsupportedLocations=$unsupportedLocations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locations'] = locations;
      json[r'unsupported_locations'] = unsupportedLocations;
    return json;
  }

  /// Returns a new [ResponseSupportedLocations] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseSupportedLocations fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseSupportedLocations(
        locations: ResponseSupportedLocation.listFromJson(json[r'locations']),
        unsupportedLocations: json[r'unsupported_locations'] == null
          ? null
          : (json[r'unsupported_locations'] as List).cast<String>(),
    );

  static List<ResponseSupportedLocations> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseSupportedLocations>[]
      : json.map((v) => ResponseSupportedLocations.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseSupportedLocations>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseSupportedLocations.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseSupportedLocations-objects as value to a dart map
  static Map<String, List<ResponseSupportedLocations>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseSupportedLocations>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseSupportedLocations.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

