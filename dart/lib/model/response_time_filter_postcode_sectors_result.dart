//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterPostcodeSectorsResult {
  /// Returns a new [ResponseTimeFilterPostcodeSectorsResult] instance.
  ResponseTimeFilterPostcodeSectorsResult({
    @required this.searchId,
    this.sectors = const [],
  });

  String searchId;

  List<ResponseTimeFilterPostcodeSector> sectors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterPostcodeSectorsResult &&
     other.searchId == searchId &&
     other.sectors == sectors;

  @override
  int get hashCode =>
    (searchId == null ? 0 : searchId.hashCode) +
    (sectors == null ? 0 : sectors.hashCode);

  @override
  String toString() => 'ResponseTimeFilterPostcodeSectorsResult[searchId=$searchId, sectors=$sectors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'search_id'] = searchId;
      json[r'sectors'] = sectors;
    return json;
  }

  /// Returns a new [ResponseTimeFilterPostcodeSectorsResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterPostcodeSectorsResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterPostcodeSectorsResult(
        searchId: json[r'search_id'],
        sectors: ResponseTimeFilterPostcodeSector.listFromJson(json[r'sectors']),
    );

  static List<ResponseTimeFilterPostcodeSectorsResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterPostcodeSectorsResult>[]
      : json.map((v) => ResponseTimeFilterPostcodeSectorsResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterPostcodeSectorsResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterPostcodeSectorsResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterPostcodeSectorsResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSectorsResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSectorsResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterPostcodeSectorsResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterPostcodeSectorsResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

