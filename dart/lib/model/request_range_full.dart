//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestRangeFull {
  /// Returns a new [RequestRangeFull] instance.
  RequestRangeFull({
    @required this.enabled,
    @required this.maxResults,
    @required this.width,
  });

  bool enabled;

  // minimum: 1
  // maximum: 5
  int maxResults;

  // minimum: 1
  // maximum: 43200
  int width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestRangeFull &&
     other.enabled == enabled &&
     other.maxResults == maxResults &&
     other.width == width;

  @override
  int get hashCode =>
    (enabled == null ? 0 : enabled.hashCode) +
    (maxResults == null ? 0 : maxResults.hashCode) +
    (width == null ? 0 : width.hashCode);

  @override
  String toString() => 'RequestRangeFull[enabled=$enabled, maxResults=$maxResults, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = enabled;
      json[r'max_results'] = maxResults;
      json[r'width'] = width;
    return json;
  }

  /// Returns a new [RequestRangeFull] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestRangeFull fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestRangeFull(
        enabled: json[r'enabled'],
        maxResults: json[r'max_results'],
        width: json[r'width'],
    );

  static List<RequestRangeFull> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRangeFull>[]
      : json.map((v) => RequestRangeFull.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestRangeFull> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestRangeFull>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestRangeFull.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestRangeFull-objects as value to a dart map
  static Map<String, List<RequestRangeFull>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestRangeFull>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestRangeFull.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

