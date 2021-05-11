//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseMapInfoMap {
  /// Returns a new [ResponseMapInfoMap] instance.
  ResponseMapInfoMap({
    @required this.name,
    @required this.features,
  });

  String name;

  ResponseMapInfoFeatures features;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseMapInfoMap &&
     other.name == name &&
     other.features == features;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (features == null ? 0 : features.hashCode);

  @override
  String toString() => 'ResponseMapInfoMap[name=$name, features=$features]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'features'] = features;
    return json;
  }

  /// Returns a new [ResponseMapInfoMap] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseMapInfoMap fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseMapInfoMap(
        name: json[r'name'],
        features: ResponseMapInfoFeatures.fromJson(json[r'features']),
    );

  static List<ResponseMapInfoMap> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseMapInfoMap>[]
      : json.map((v) => ResponseMapInfoMap.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseMapInfoMap> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseMapInfoMap>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseMapInfoMap.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoMap-objects as value to a dart map
  static Map<String, List<ResponseMapInfoMap>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseMapInfoMap>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseMapInfoMap.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

