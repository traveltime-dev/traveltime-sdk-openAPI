//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeMap {
  /// Returns a new [RequestTimeMap] instance.
  RequestTimeMap({
    this.departureSearches = const [],
    this.arrivalSearches = const [],
    this.unions = const [],
    this.intersections = const [],
  });

  List<RequestTimeMapDepartureSearch> departureSearches;

  List<RequestTimeMapArrivalSearch> arrivalSearches;

  List<RequestUnionOnIntersection> unions;

  List<RequestUnionOnIntersection> intersections;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeMap &&
     other.departureSearches == departureSearches &&
     other.arrivalSearches == arrivalSearches &&
     other.unions == unions &&
     other.intersections == intersections;

  @override
  int get hashCode =>
    (departureSearches == null ? 0 : departureSearches.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode) +
    (unions == null ? 0 : unions.hashCode) +
    (intersections == null ? 0 : intersections.hashCode);

  @override
  String toString() => 'RequestTimeMap[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, unions=$unions, intersections=$intersections]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (departureSearches != null) {
      json[r'departure_searches'] = departureSearches;
    }
    if (arrivalSearches != null) {
      json[r'arrival_searches'] = arrivalSearches;
    }
    if (unions != null) {
      json[r'unions'] = unions;
    }
    if (intersections != null) {
      json[r'intersections'] = intersections;
    }
    return json;
  }

  /// Returns a new [RequestTimeMap] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeMap fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeMap(
        departureSearches: RequestTimeMapDepartureSearch.listFromJson(json[r'departure_searches']),
        arrivalSearches: RequestTimeMapArrivalSearch.listFromJson(json[r'arrival_searches']),
        unions: RequestUnionOnIntersection.listFromJson(json[r'unions']),
        intersections: RequestUnionOnIntersection.listFromJson(json[r'intersections']),
    );

  static List<RequestTimeMap> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeMap>[]
      : json.map((v) => RequestTimeMap.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeMap> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeMap>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeMap.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMap-objects as value to a dart map
  static Map<String, List<RequestTimeMap>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeMap>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeMap.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

