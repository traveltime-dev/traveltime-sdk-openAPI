//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodeDistricts {
  /// Returns a new [RequestTimeFilterPostcodeDistricts] instance.
  RequestTimeFilterPostcodeDistricts({
    this.departureSearches = const [],
    this.arrivalSearches = const [],
  });

  List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches;

  List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodeDistricts &&
     other.departureSearches == departureSearches &&
     other.arrivalSearches == arrivalSearches;

  @override
  int get hashCode =>
    (departureSearches == null ? 0 : departureSearches.hashCode) +
    (arrivalSearches == null ? 0 : arrivalSearches.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodeDistricts[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches]';

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

  /// Returns a new [RequestTimeFilterPostcodeDistricts] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodeDistricts fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodeDistricts(
        departureSearches: RequestTimeFilterPostcodeDistrictsDepartureSearch.listFromJson(json[r'departure_searches']),
        arrivalSearches: RequestTimeFilterPostcodeDistrictsArrivalSearch.listFromJson(json[r'arrival_searches']),
    );

  static List<RequestTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeDistricts>[]
      : json.map((v) => RequestTimeFilterPostcodeDistricts.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodeDistricts>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodeDistricts.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeDistricts-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeDistricts>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodeDistricts>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodeDistricts.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

