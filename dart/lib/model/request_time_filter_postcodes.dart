//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodes {
  /// Returns a new [RequestTimeFilterPostcodes] instance.
  RequestTimeFilterPostcodes({
    this.departureSearches = const [],
    this.arrivalSearches = const [],
  });

  List<RequestTimeFilterPostcodesDepartureSearch> departureSearches;

  List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodes &&
     other.departureSearches == departureSearches &&
     other.arrivalSearches == arrivalSearches;

  @override
  int get hashCode =>
    (departureSearches == null ? 0 : departureSearches.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodes[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches]';

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

  /// Returns a new [RequestTimeFilterPostcodes] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodes fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodes(
        departureSearches: RequestTimeFilterPostcodesDepartureSearch.listFromJson(json[r'departure_searches']),
        arrivalSearches: RequestTimeFilterPostcodesArrivalSearch.listFromJson(json[r'arrival_searches']),
    );

  static List<RequestTimeFilterPostcodes> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodes>[]
      : json.map((v) => RequestTimeFilterPostcodes.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodes>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodes.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodes-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodes>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodes>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodes.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

