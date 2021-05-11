//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodeSectors {
  /// Returns a new [RequestTimeFilterPostcodeSectors] instance.
  RequestTimeFilterPostcodeSectors({
    this.departureSearches = const [],
    this.arrivalSearches = const [],
  });

  List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches;

  List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodeSectors &&
     other.departureSearches == departureSearches &&
     other.arrivalSearches == arrivalSearches;

  @override
  int get hashCode =>
    (departureSearches == null ? 0 : departureSearches.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodeSectors[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (departureSearches != null) {
      json[r'departure_searches'] = departureSearches;
    }
    if (arrivalSearches != null) {
      json[r'arrival_searches'] = arrivalSearches;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilterPostcodeSectors] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodeSectors fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodeSectors(
        departureSearches: RequestTimeFilterPostcodeSectorsDepartureSearch.listFromJson(json[r'departure_searches']),
        arrivalSearches: RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(json[r'arrival_searches']),
    );

  static List<RequestTimeFilterPostcodeSectors> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeSectors>[]
      : json.map((v) => RequestTimeFilterPostcodeSectors.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodeSectors>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodeSectors.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeSectors-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeSectors>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodeSectors>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodeSectors.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

