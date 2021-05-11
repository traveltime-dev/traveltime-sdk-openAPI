//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapWkt {
  /// Returns a new [ResponseTimeMapWkt] instance.
  ResponseTimeMapWkt({
    this.results = const [],
  });

  List<ResponseTimeMapWktResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapWkt &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeMapWkt[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeMapWkt] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapWkt fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapWkt(
        results: ResponseTimeMapWktResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeMapWkt> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapWkt>[]
      : json.map((v) => ResponseTimeMapWkt.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapWkt> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapWkt>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapWkt.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapWkt-objects as value to a dart map
  static Map<String, List<ResponseTimeMapWkt>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapWkt>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapWkt.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

