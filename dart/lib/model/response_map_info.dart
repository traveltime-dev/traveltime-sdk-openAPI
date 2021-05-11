//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseMapInfo {
  /// Returns a new [ResponseMapInfo] instance.
  ResponseMapInfo({
    this.maps = const [],
  });

  List<ResponseMapInfoMap> maps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseMapInfo &&
     other.maps == maps;

  @override
  int get hashCode =>
    (maps == null ? 0 : maps.hashCode);

  @override
  String toString() => 'ResponseMapInfo[maps=$maps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'maps'] = maps;
    return json;
  }

  /// Returns a new [ResponseMapInfo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseMapInfo fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseMapInfo(
        maps: ResponseMapInfoMap.listFromJson(json[r'maps']),
    );

  static List<ResponseMapInfo> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseMapInfo>[]
      : json.map((v) => ResponseMapInfo.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseMapInfo> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseMapInfo>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseMapInfo.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfo-objects as value to a dart map
  static Map<String, List<ResponseMapInfo>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseMapInfo>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseMapInfo.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

