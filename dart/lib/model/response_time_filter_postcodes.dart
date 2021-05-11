//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodes {
  /// Returns a new [ResponseTimeFilterPostcodes] instance.
  ResponseTimeFilterPostcodes({
    this.results = const [],
  });

  List<ResponseTimeFilterPostcodesResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodes &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodes[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodes] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodes fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodes(
        results: ResponseTimeFilterPostcodesResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeFilterPostcodes> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodes>[]
      : json.map((v) => ResponseTimeFilterPostcodes.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodes>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodes.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodes-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodes>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodes>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodes.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

