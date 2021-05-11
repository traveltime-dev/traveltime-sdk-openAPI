//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeSectors {
  /// Returns a new [ResponseTimeFilterPostcodeSectors] instance.
  ResponseTimeFilterPostcodeSectors({
    this.results = const [],
  });

  List<ResponseTimeFilterPostcodeSectorsResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeSectors &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeSectors[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeSectors] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeSectors fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeSectors(
        results: ResponseTimeFilterPostcodeSectorsResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeFilterPostcodeSectors> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeSectors>[]
      : json.map((v) => ResponseTimeFilterPostcodeSectors.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeSectors>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeSectors.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSectors-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSectors>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeSectors>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeSectors.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

