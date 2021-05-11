//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeDistrictProperties {
  /// Returns a new [ResponseTimeFilterPostcodeDistrictProperties] instance.
  ResponseTimeFilterPostcodeDistrictProperties({
    this.travelTimeReachable,
    this.travelTimeAll,
    this.coverage,
  });

  ResponseTravelTimeStatistics travelTimeReachable;

  ResponseTravelTimeStatistics travelTimeAll;

  double coverage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeDistrictProperties &&
     other.travelTimeReachable == travelTimeReachable &&
     other.travelTimeAll == travelTimeAll &&
     other.coverage == coverage;

  @override
  int get hashCode =>
    (travelTimeReachable == null ? 0 : travelTimeReachable.hashCode) +
    (travelTimeAll == null ? 0 : travelTimeAll.hashCode) +
    (coverage == null ? 0 : coverage.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeDistrictProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (travelTimeReachable != null) {
      json[r'travel_time_reachable'] = travelTimeReachable;
    }
    if (travelTimeAll != null) {
      json[r'travel_time_all'] = travelTimeAll;
    }
    if (coverage != null) {
      json[r'coverage'] = coverage;
    }
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeDistrictProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeDistrictProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeDistrictProperties(
        travelTimeReachable: ResponseTravelTimeStatistics.fromJson(json[r'travel_time_reachable']),
        travelTimeAll: ResponseTravelTimeStatistics.fromJson(json[r'travel_time_all']),
        coverage: json[r'coverage'],
    );

  static List<ResponseTimeFilterPostcodeDistrictProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeDistrictProperties>[]
      : json.map((v) => ResponseTimeFilterPostcodeDistrictProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeDistrictProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeDistrictProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeDistrictProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrictProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrictProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeDistrictProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeDistrictProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

