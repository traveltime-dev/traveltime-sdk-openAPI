//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapResult {
  /// Returns a new [ResponseTimeMapResult] instance.
  ResponseTimeMapResult({
    @required this.searchId,
    this.shapes = const [],
    @required this.properties,
  });

  String searchId;

  List<ResponseShape> shapes;

  ResponseTimeMapProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapResult &&
     other.searchId == searchId &&
     other.shapes == shapes &&
     other.properties == properties;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (shapes == null ? 0 : shapes.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeMapResult[searchId=$searchId, shapes=$shapes, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'shapes'] = shapes;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeMapResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapResult(
        searchId: json[r'search_id'],
        shapes: ResponseShape.listFromJson(json[r'shapes']),
        properties: ResponseTimeMapProperties.fromJson(json[r'properties']),
    );

  static List<ResponseTimeMapResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapResult>[]
      : json.map((v) => ResponseTimeMapResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

