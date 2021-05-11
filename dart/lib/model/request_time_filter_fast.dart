//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterFast {
  /// Returns a new [RequestTimeFilterFast] instance.
  RequestTimeFilterFast({
    this.locations = const [],
    @required this.arrivalSearches,
  });

  List<RequestLocation> locations;

  RequestTimeFilterFastArrivalSearches arrivalSearches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterFast &&
     other.locations == locations &&
     other.arrivalSearches == arrivalSearches;

  @override
  int get hashCode =>
    (locations == null ? 0 : locations.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode);

  @override
  String toString() => 'RequestTimeFilterFast[locations=$locations, arrivalSearches=$arrivalSearches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locations'] = locations;
      json[r'arrival_searches'] = arrivalSearches;
    return json;
  }

  /// Returns a new [RequestTimeFilterFast] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterFast fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterFast(
        locations: RequestLocation.listFromJson(json[r'locations']),
        arrivalSearches: RequestTimeFilterFastArrivalSearches.fromJson(json[r'arrival_searches']),
    );

  static List<RequestTimeFilterFast> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterFast>[]
      : json.map((v) => RequestTimeFilterFast.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterFast>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterFast.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFast-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFast>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterFast>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterFast.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

