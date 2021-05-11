//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodesDepartureSearch {
  /// Returns a new [RequestTimeFilterPostcodesDepartureSearch] instance.
  RequestTimeFilterPostcodesDepartureSearch({
    @required this.id,
    @required this.transportation,
    @required this.travelTime,
    @required this.departureTime,
    this.properties = const [],
    this.range,
  });

  String id;

  RequestTransportation transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  DateTime departureTime;

  List<RequestTimeFilterPostcodesProperty> properties;

  RequestRangeFull range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodesDepartureSearch &&
     other.id == id &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.departureTime == departureTime &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (departureTime == null ? 0 : departureTime.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodesDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'departure_time'] = departureTime.toUtc().toIso8601String();
      json[r'properties'] = properties;
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilterPostcodesDepartureSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodesDepartureSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodesDepartureSearch(
        id: json[r'id'],
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        departureTime: json[r'departure_time'] == null
          ? null
          : DateTime.parse(json[r'departure_time']),
        properties: RequestTimeFilterPostcodesProperty.listFromJson(json[r'properties']),
        range: RequestRangeFull.fromJson(json[r'range']),
    );

  static List<RequestTimeFilterPostcodesDepartureSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodesDepartureSearch>[]
      : json.map((v) => RequestTimeFilterPostcodesDepartureSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodesDepartureSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodesDepartureSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodesDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodesDepartureSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodesDepartureSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodesDepartureSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

