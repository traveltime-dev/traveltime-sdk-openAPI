//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterFast {
  /// Returns a new [ResponseTimeFilterFast] instance.
  ResponseTimeFilterFast({
    this.results = const [],
  });

  List<ResponseTimeFilterFastResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterFast &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeFilterFast[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeFilterFast] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterFast fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterFast(
        results: ResponseTimeFilterFastResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeFilterFast> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterFast>[]
      : json.map((v) => ResponseTimeFilterFast.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterFast>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterFast.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFast-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFast>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterFast>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterFast.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

