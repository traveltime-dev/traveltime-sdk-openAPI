//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMap {
  /// Returns a new [ResponseTimeMap] instance.
  ResponseTimeMap({
    this.results = const [],
  });

  List<ResponseTimeMapResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMap &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeMap[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeMap] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMap fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMap(
        results: ResponseTimeMapResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeMap> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMap>[]
      : json.map((v) => ResponseTimeMap.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMap> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMap>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMap.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMap-objects as value to a dart map
  static Map<String, List<ResponseTimeMap>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMap>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMap.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

