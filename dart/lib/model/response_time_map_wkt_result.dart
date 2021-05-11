//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapWktResult {
  /// Returns a new [ResponseTimeMapWktResult] instance.
  ResponseTimeMapWktResult({
    @required this.searchId,
    @required this.shape,
    @required this.properties,
  });

  String searchId;

  String shape;

  ResponseTimeMapProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapWktResult &&
     other.searchId == searchId &&
     other.shape == shape &&
     other.properties == properties;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (shape == null ? 0 : shape.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeMapWktResult[searchId=$searchId, shape=$shape, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'shape'] = shape;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeMapWktResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapWktResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapWktResult(
        searchId: json[r'search_id'],
        shape: json[r'shape'],
        properties: ResponseTimeMapProperties.fromJson(json[r'properties']),
    );

  static List<ResponseTimeMapWktResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapWktResult>[]
      : json.map((v) => ResponseTimeMapWktResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapWktResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapWktResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapWktResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapWktResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapWktResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapWktResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapWktResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

