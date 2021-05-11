//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodesResult {
  /// Returns a new [ResponseTimeFilterPostcodesResult] instance.
  ResponseTimeFilterPostcodesResult({
    @required this.searchId,
    this.postcodes = const [],
  });

  String searchId;

  List<ResponseTimeFilterPostcode> postcodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodesResult &&
     other.searchId == searchId &&
     other.postcodes == postcodes;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (postcodes == null ? 0 : postcodes.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodesResult[searchId=$searchId, postcodes=$postcodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'postcodes'] = postcodes;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodesResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodesResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodesResult(
        searchId: json[r'search_id'],
        postcodes: ResponseTimeFilterPostcode.listFromJson(json[r'postcodes']),
    );

  static List<ResponseTimeFilterPostcodesResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodesResult>[]
      : json.map((v) => ResponseTimeFilterPostcodesResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodesResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodesResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodesResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodesResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodesResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodesResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodesResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

