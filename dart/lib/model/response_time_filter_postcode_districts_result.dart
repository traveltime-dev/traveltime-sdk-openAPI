//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeDistrictsResult {
  /// Returns a new [ResponseTimeFilterPostcodeDistrictsResult] instance.
  ResponseTimeFilterPostcodeDistrictsResult({
    @required this.searchId,
    this.districts = const [],
  });

  String searchId;

  List<ResponseTimeFilterPostcodeDistrict> districts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeDistrictsResult &&
     other.searchId == searchId &&
     other.districts == districts;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (districts == null ? 0 : districts.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeDistrictsResult[searchId=$searchId, districts=$districts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'districts'] = districts;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeDistrictsResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeDistrictsResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeDistrictsResult(
        searchId: json[r'search_id'],
        districts: ResponseTimeFilterPostcodeDistrict.listFromJson(json[r'districts']),
    );

  static List<ResponseTimeFilterPostcodeDistrictsResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeDistrictsResult>[]
      : json.map((v) => ResponseTimeFilterPostcodeDistrictsResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeDistrictsResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeDistrictsResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeDistrictsResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrictsResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrictsResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeDistrictsResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeDistrictsResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

