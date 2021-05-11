//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilter {
  /// Returns a new [ResponseTimeFilter] instance.
  ResponseTimeFilter({
    this.results = const [],
  });

  List<ResponseTimeFilterResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilter &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeFilter[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeFilter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilter fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilter(
        results: ResponseTimeFilterResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeFilter> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilter>[]
      : json.map((v) => ResponseTimeFilter.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilter> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilter>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilter.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilter-objects as value to a dart map
  static Map<String, List<ResponseTimeFilter>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilter>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilter.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

