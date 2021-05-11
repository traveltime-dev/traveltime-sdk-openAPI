//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterPostcodeSectorsArrivalSearch {
  /// Returns a new [RequestTimeFilterPostcodeSectorsArrivalSearch] instance.
  RequestTimeFilterPostcodeSectorsArrivalSearch({
    @required this.id,
    @required this.transportation,
    @required this.travelTime,
    @required this.arrivalTime,
    @required this.reachablePostcodesThreshold,
    this.properties = const [],
    this.range,
  });

  String id;

  RequestTransportation transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  DateTime arrivalTime;

  double reachablePostcodesThreshold;

  List<RequestTimeFilterPostcodeSectorsProperty> properties;

  RequestRangeFull range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterPostcodeSectorsArrivalSearch &&
     other.id == id &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.arrivalTime == arrivalTime &&
     other.reachablePostcodesThreshold == reachablePostcodesThreshold &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (arrivalTime == null ? 0 : arrivalTime.hashCode) +
    (reachablePostcodesThreshold == null ? 0 : reachablePostcodesThreshold.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestTimeFilterPostcodeSectorsArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'arrival_time'] = arrivalTime.toUtc().toIso8601String();
      json[r'reachable_postcodes_threshold'] = reachablePostcodesThreshold;
      json[r'properties'] = properties;
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestTimeFilterPostcodeSectorsArrivalSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterPostcodeSectorsArrivalSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterPostcodeSectorsArrivalSearch(
        id: json[r'id'],
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        arrivalTime: json[r'arrival_time'] == null
          ? null
          : DateTime.parse(json[r'arrival_time']),
        reachablePostcodesThreshold: json[r'reachable_postcodes_threshold'],
        properties: RequestTimeFilterPostcodeSectorsProperty.listFromJson(json[r'properties']),
        range: RequestRangeFull.fromJson(json[r'range']),
    );

  static List<RequestTimeFilterPostcodeSectorsArrivalSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeSectorsArrivalSearch>[]
      : json.map((v) => RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterPostcodeSectorsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterPostcodeSectorsArrivalSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeSectorsArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeSectorsArrivalSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterPostcodeSectorsArrivalSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

