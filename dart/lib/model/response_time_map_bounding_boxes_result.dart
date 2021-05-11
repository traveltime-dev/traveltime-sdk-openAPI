//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapBoundingBoxesResult {
  /// Returns a new [ResponseTimeMapBoundingBoxesResult] instance.
  ResponseTimeMapBoundingBoxesResult({
    @required this.searchId,
    this.boundingBoxes = const [],
    @required this.properties,
  });

  String searchId;

  List<ResponseBoundingBox> boundingBoxes;

  ResponseTimeMapProperties properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapBoundingBoxesResult &&
     other.searchId == searchId &&
     other.boundingBoxes == boundingBoxes &&
     other.properties == properties;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (boundingBoxes == null ? 0 : boundingBoxes.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeMapBoundingBoxesResult[searchId=$searchId, boundingBoxes=$boundingBoxes, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'bounding_boxes'] = boundingBoxes;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeMapBoundingBoxesResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapBoundingBoxesResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapBoundingBoxesResult(
        searchId: json[r'search_id'],
        boundingBoxes: ResponseBoundingBox.listFromJson(json[r'bounding_boxes']),
        properties: ResponseTimeMapProperties.fromJson(json[r'properties']),
    );

  static List<ResponseTimeMapBoundingBoxesResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapBoundingBoxesResult>[]
      : json.map((v) => ResponseTimeMapBoundingBoxesResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapBoundingBoxesResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapBoundingBoxesResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapBoundingBoxesResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapBoundingBoxesResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapBoundingBoxesResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapBoundingBoxesResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapBoundingBoxesResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

