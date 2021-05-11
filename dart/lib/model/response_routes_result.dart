//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoutesResult {
  /// Returns a new [ResponseRoutesResult] instance.
  ResponseRoutesResult({
    @required this.searchId,
    this.locations = const [],
    this.unreachable = const [],
  });

  String searchId;

  List<ResponseRoutesLocation> locations;

  List<String> unreachable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoutesResult &&
     other.searchId == searchId &&
     other.locations == locations &&
     other.unreachable == unreachable;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (locations == null ? 0 : locations.hashCode) +
    (unreachable == null ? 0 : unreachable.hashCode);

  @override
  String toString() => 'ResponseRoutesResult[searchId=$searchId, locations=$locations, unreachable=$unreachable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'locations'] = locations;
      json[r'unreachable'] = unreachable;
    return json;
  }

  /// Returns a new [ResponseRoutesResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoutesResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoutesResult(
        searchId: json[r'search_id'],
        locations: ResponseRoutesLocation.listFromJson(json[r'locations']),
        unreachable: json[r'unreachable'] == null
          ? null
          : (json[r'unreachable'] as List).cast<String>(),
    );

  static List<ResponseRoutesResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutesResult>[]
      : json.map((v) => ResponseRoutesResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoutesResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoutesResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoutesResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesResult-objects as value to a dart map
  static Map<String, List<ResponseRoutesResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoutesResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoutesResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

