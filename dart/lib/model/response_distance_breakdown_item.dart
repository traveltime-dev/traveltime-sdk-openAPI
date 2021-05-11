//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseDistanceBreakdownItem {
  /// Returns a new [ResponseDistanceBreakdownItem] instance.
  ResponseDistanceBreakdownItem({
    @required this.mode,
    @required this.distance,
  });

  ResponseTransportationMode mode;

  int distance;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseDistanceBreakdownItem &&
     other.mode == mode &&
     other.distance == distance;

  @override
  int get hashCode =>
    (mode == null ? 0 : mode.hashCode) +
    (distance == null ? 0 : distance.hashCode);

  @override
  String toString() => 'ResponseDistanceBreakdownItem[mode=$mode, distance=$distance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mode'] = mode;
      json[r'distance'] = distance;
    return json;
  }

  /// Returns a new [ResponseDistanceBreakdownItem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseDistanceBreakdownItem fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseDistanceBreakdownItem(
        mode: ResponseTransportationMode.fromJson(json[r'mode']),
        distance: json[r'distance'],
    );

  static List<ResponseDistanceBreakdownItem> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseDistanceBreakdownItem>[]
      : json.map((v) => ResponseDistanceBreakdownItem.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseDistanceBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseDistanceBreakdownItem>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseDistanceBreakdownItem.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseDistanceBreakdownItem-objects as value to a dart map
  static Map<String, List<ResponseDistanceBreakdownItem>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseDistanceBreakdownItem>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseDistanceBreakdownItem.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

