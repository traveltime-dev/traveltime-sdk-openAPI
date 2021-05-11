//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseMapInfoFeaturesPublicTransport {
  /// Returns a new [ResponseMapInfoFeaturesPublicTransport] instance.
  ResponseMapInfoFeaturesPublicTransport({
    @required this.dateStart,
    @required this.dateEnd,
  });

  DateTime dateStart;

  DateTime dateEnd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseMapInfoFeaturesPublicTransport &&
     other.dateStart == dateStart &&
     other.dateEnd == dateEnd;

  @override
  int get hashCode =>
    (dateStart == null ? 0 : dateStart.hashCode) +
    (dateEnd == null ? 0 : dateEnd.hashCode);

  @override
  String toString() => 'ResponseMapInfoFeaturesPublicTransport[dateStart=$dateStart, dateEnd=$dateEnd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date_start'] = dateStart.toUtc().toIso8601String();
      json[r'date_end'] = dateEnd.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ResponseMapInfoFeaturesPublicTransport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseMapInfoFeaturesPublicTransport fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseMapInfoFeaturesPublicTransport(
        dateStart: json[r'date_start'] == null
          ? null
          : DateTime.parse(json[r'date_start']),
        dateEnd: json[r'date_end'] == null
          ? null
          : DateTime.parse(json[r'date_end']),
    );

  static List<ResponseMapInfoFeaturesPublicTransport> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseMapInfoFeaturesPublicTransport>[]
      : json.map((v) => ResponseMapInfoFeaturesPublicTransport.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseMapInfoFeaturesPublicTransport> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseMapInfoFeaturesPublicTransport>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseMapInfoFeaturesPublicTransport.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoFeaturesPublicTransport-objects as value to a dart map
  static Map<String, List<ResponseMapInfoFeaturesPublicTransport>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseMapInfoFeaturesPublicTransport>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseMapInfoFeaturesPublicTransport.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

