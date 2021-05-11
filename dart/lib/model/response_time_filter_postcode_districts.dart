//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeDistricts {
  /// Returns a new [ResponseTimeFilterPostcodeDistricts] instance.
  ResponseTimeFilterPostcodeDistricts({
    this.results = const [],
  });

  List<ResponseTimeFilterPostcodeDistrictsResult> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeDistricts &&
     other.results == results;

  @override
  int get hashCode =>
    (results == null ? 0 : results.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeDistricts[results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = results;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeDistricts] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeDistricts fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeDistricts(
        results: ResponseTimeFilterPostcodeDistrictsResult.listFromJson(json[r'results']),
    );

  static List<ResponseTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeDistricts>[]
      : json.map((v) => ResponseTimeFilterPostcodeDistricts.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeDistricts>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeDistricts.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistricts-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistricts>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeDistricts>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeDistricts.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

