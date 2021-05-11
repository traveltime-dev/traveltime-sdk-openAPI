//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapBoundingBoxes {
  /// Returns a new [ResponseTimeMapBoundingBoxes] instance.
  ResponseTimeMapBoundingBoxes({
    this.results = const [],
  });

  List<ResponseTimeMapBoundingBoxesResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapBoundingBoxes &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeMapBoundingBoxes[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeMapBoundingBoxes] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapBoundingBoxes fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapBoundingBoxes(
        results: ResponseTimeMapBoundingBoxesResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeMapBoundingBoxes> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapBoundingBoxes>[]
      : json.map((v) => ResponseTimeMapBoundingBoxes.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapBoundingBoxes> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapBoundingBoxes>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapBoundingBoxes.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapBoundingBoxes-objects as value to a dart map
  static Map<String, List<ResponseTimeMapBoundingBoxes>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapBoundingBoxes>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapBoundingBoxes.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

