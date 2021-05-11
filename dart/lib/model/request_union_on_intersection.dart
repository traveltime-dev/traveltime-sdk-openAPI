//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestUnionOnIntersection {
  /// Returns a new [RequestUnionOnIntersection] instance.
  RequestUnionOnIntersection({
    @required this.id,
    this.searchIds = const [],
  });

  String id;

  List<String> searchIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestUnionOnIntersection &&
     other.id == id &&
     other.searchIds == searchIds;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (searchIds == null ? 0 : searchIds.hashCode);

  @override
  String toString() => 'RequestUnionOnIntersection[id=$id, searchIds=$searchIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'search_ids'] = searchIds;
    return json;
  }

  /// Returns a new [RequestUnionOnIntersection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestUnionOnIntersection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestUnionOnIntersection(
        id: json[r'id'],
        searchIds: json[r'search_ids'] == null
          ? null
          : (json[r'search_ids'] as List).cast<String>(),
    );

  static List<RequestUnionOnIntersection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestUnionOnIntersection>[]
      : json.map((v) => RequestUnionOnIntersection.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestUnionOnIntersection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestUnionOnIntersection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestUnionOnIntersection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestUnionOnIntersection-objects as value to a dart map
  static Map<String, List<RequestUnionOnIntersection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestUnionOnIntersection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestUnionOnIntersection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

