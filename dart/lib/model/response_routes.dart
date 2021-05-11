//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseRoutes {
  /// Returns a new [ResponseRoutes] instance.
  ResponseRoutes({
    this.results = const [],
  });

  List<ResponseRoutesResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseRoutes &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseRoutes[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseRoutes] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseRoutes fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseRoutes(
        results: ResponseRoutesResult.listFromJson(json[r'results']),
    );

  static List<ResponseRoutes> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseRoutes>[]
      : json.map((v) => ResponseRoutes.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseRoutes> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseRoutes>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseRoutes.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutes-objects as value to a dart map
  static Map<String, List<ResponseRoutes>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseRoutes>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseRoutes.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

