//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeFilterFastProperties {
  /// Returns a new [ResponseTimeFilterFastProperties] instance.
  ResponseTimeFilterFastProperties({
    this.travelTime,
    this.fares,
  });

  int travelTime;

  ResponseFaresFast fares;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeFilterFastProperties &&
     other.travelTime == travelTime &&
     other.fares == fares;

  @override
  int get hashCode =>
    (travelTime == null ? 0 : travelTime.hashCode) +
    (fares == null ? 0 : fares.hashCode);

  @override
  String toString() => 'ResponseTimeFilterFastProperties[travelTime=$travelTime, fares=$fares]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (travelTime != null) {
      json[r'travel_time'] = travelTime;
    }
    if (fares != null) {
      json[r'fares'] = fares;
    }
    return json;
  }

  /// Returns a new [ResponseTimeFilterFastProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeFilterFastProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeFilterFastProperties(
        travelTime: json[r'travel_time'],
        fares: ResponseFaresFast.fromJson(json[r'fares']),
    );

  static List<ResponseTimeFilterFastProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeFilterFastProperties>[]
      : json.map((v) => ResponseTimeFilterFastProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeFilterFastProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeFilterFastProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeFilterFastProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFastProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFastProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeFilterFastProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeFilterFastProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

