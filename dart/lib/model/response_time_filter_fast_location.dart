//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterFastLocation {
  /// Returns a new [ResponseTimeFilterFastLocation] instance.
  ResponseTimeFilterFastLocation({
    @required this.id,
    this.properties = const [],
  });

  String id;

  List<ResponseTimeFilterFastProperties> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterFastLocation &&
     other.id == id &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'ResponseTimeFilterFastLocation[id=$id, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [ResponseTimeFilterFastLocation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterFastLocation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterFastLocation(
        id: json[r'id'],
        properties: ResponseTimeFilterFastProperties.listFromJson(json[r'properties']),
    );

  static List<ResponseTimeFilterFastLocation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterFastLocation>[]
      : json.map((v) => ResponseTimeFilterFastLocation.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterFastLocation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterFastLocation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterFastLocation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFastLocation-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFastLocation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterFastLocation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterFastLocation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

