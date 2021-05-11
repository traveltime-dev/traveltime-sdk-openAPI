//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilter {
  /// Returns a new [RequestTimeFilter] instance.
  RequestTimeFilter({
    this.locations = const [],
    this.departureSearches = const [],
    this.arrivalSearches = const [],
  });

  List<RequestLocation> locations;

  List<RequestTimeFilterDepartureSearch> departureSearches;

  List<RequestTimeFilterArrivalSearch> arrivalSearches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilter &&
     other.locations == locations &&
     other.departureSearches == departureSearches &&
     other.arrivalSearches == arrivalSearches;

  @override
  int get hashCode =>
    (locations == null ? 0 : locations.hashCode) +
    (departureSearches == null ? 0 : departureSearches.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode);

  @override
  String toString() => 'RequestTimeFilter[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'locations'] = locations;
    if (departureSearches != null) {
      json[r'departure_searches'] = departureSearches;
    }
    if (arrivalSearches != null) {
      json[r'arrival_searches'] = arrivalSearches;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilter fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilter(
        locations: RequestLocation.listFromJson(json[r'locations']),
        departureSearches: RequestTimeFilterDepartureSearch.listFromJson(json[r'departure_searches']),
        arrivalSearches: RequestTimeFilterArrivalSearch.listFromJson(json[r'arrival_searches']),
    );

  static List<RequestTimeFilter> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilter>[]
      : json.map((v) => RequestTimeFilter.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilter> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilter>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilter.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilter-objects as value to a dart map
  static Map<String, List<RequestTimeFilter>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilter>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilter.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

