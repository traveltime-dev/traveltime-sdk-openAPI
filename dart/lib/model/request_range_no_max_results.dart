//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestRangeNoMaxResults {
  /// Returns a new [RequestRangeNoMaxResults] instance.
  RequestRangeNoMaxResults({
    @required this.enabled,
    @required this.width,
  });

  bool enabled;

  // minimum: 1
  // maximum: 43200
  int width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestRangeNoMaxResults &&
     other.enabled == enabled &&
     other.width == width;

  @override
  int get hashCode =>
    (enabled == null ? 0 : enabled.hashCode) +
    (width == null ? 0 : width.hashCode);

  @override
  String toString() => 'RequestRangeNoMaxResults[enabled=$enabled, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = enabled;
      json[r'width'] = width;
    return json;
  }

  /// Returns a new [RequestRangeNoMaxResults] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestRangeNoMaxResults fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestRangeNoMaxResults(
        enabled: json[r'enabled'],
        width: json[r'width'],
    );

  static List<RequestRangeNoMaxResults> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRangeNoMaxResults>[]
      : json.map((v) => RequestRangeNoMaxResults.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestRangeNoMaxResults> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestRangeNoMaxResults>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestRangeNoMaxResults.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestRangeNoMaxResults-objects as value to a dart map
  static Map<String, List<RequestRangeNoMaxResults>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestRangeNoMaxResults>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestRangeNoMaxResults.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

