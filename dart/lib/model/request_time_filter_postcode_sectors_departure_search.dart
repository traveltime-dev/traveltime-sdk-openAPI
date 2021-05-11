//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodeSectorsDepartureSearch {
  /// Returns a new [RequestTimeFilterPostcodeSectorsDepartureSearch] instance.
  RequestTimeFilterPostcodeSectorsDepartureSearch({
    @required this.id,
    @required this.transportation,
    @required this.travelTime,
    @required this.departureTime,
    @required this.reachablePostcodesThreshold,
    this.properties = const [],
    this.range,
  });

  String id;

  RequestTransportation transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  DateTime departureTime;

  double reachablePostcodesThreshold;

  List<RequestTimeFilterPostcodeSectorsProperty> properties;

  RequestRangeFull range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodeSectorsDepartureSearch &&
     other.id == id &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.departureTime == departureTime &&
     other.reachablePostcodesThreshold == reachablePostcodesThreshold &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (departureTime == null ? 0 : departureTime.hashCode) +
    (reachablePostcodesThreshold == null ? 0 : reachablePostcodesThreshold.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodeSectorsDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'departure_time'] = departureTime.toUtc().toIso8601String();
      json[r'reachable_postcodes_threshold'] = reachablePostcodesThreshold;
      json[r'properties'] = properties;
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilterPostcodeSectorsDepartureSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodeSectorsDepartureSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodeSectorsDepartureSearch(
        id: json[r'id'],
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        departureTime: json[r'departure_time'] == null
          ? null
          : DateTime.parse(json[r'departure_time']),
        reachablePostcodesThreshold: json[r'reachable_postcodes_threshold'],
        properties: RequestTimeFilterPostcodeSectorsProperty.listFromJson(json[r'properties']),
        range: RequestRangeFull.fromJson(json[r'range']),
    );

  static List<RequestTimeFilterPostcodeSectorsDepartureSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeSectorsDepartureSearch>[]
      : json.map((v) => RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodeSectorsDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodeSectorsDepartureSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeSectorsDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeSectorsDepartureSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodeSectorsDepartureSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodeSectorsDepartureSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

