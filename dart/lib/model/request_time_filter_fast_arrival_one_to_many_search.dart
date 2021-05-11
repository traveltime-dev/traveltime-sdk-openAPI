//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterFastArrivalOneToManySearch {
  /// Returns a new [RequestTimeFilterFastArrivalOneToManySearch] instance.
  RequestTimeFilterFastArrivalOneToManySearch({
    @required this.id,
    @required this.departureLocationId,
    this.arrivalLocationIds = const [],
    @required this.transportation,
    @required this.travelTime,
    @required this.arrivalTimePeriod,
    this.properties = const [],
  });

  String id;

  String departureLocationId;

  List<String> arrivalLocationIds;

  RequestTransportationFast transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  RequestArrivalTimePeriod arrivalTimePeriod;

  List<RequestTimeFilterFastProperty> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterFastArrivalOneToManySearch &&
     other.id == id &&
     other.departureLocationId == departureLocationId &&
     other.arrivalLocationIds == arrivalLocationIds &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.arrivalTimePeriod == arrivalTimePeriod &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (departureLocationId == null ? 0 : departureLocationId.hashCode) +
    (arrivalLocationIds == null ? 0 : arrivalLocationIds.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (arrivalTimePeriod == null ? 0 : arrivalTimePeriod.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'RequestTimeFilterFastArrivalOneToManySearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'departure_location_id'] = departureLocationId;
      json[r'arrival_location_ids'] = arrivalLocationIds;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'arrival_time_period'] = arrivalTimePeriod;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [RequestTimeFilterFastArrivalOneToManySearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterFastArrivalOneToManySearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterFastArrivalOneToManySearch(
        id: json[r'id'],
        departureLocationId: json[r'departure_location_id'],
        arrivalLocationIds: json[r'arrival_location_ids'] == null
          ? null
          : (json[r'arrival_location_ids'] as List).cast<String>(),
        transportation: RequestTransportationFast.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        arrivalTimePeriod: RequestArrivalTimePeriod.fromJson(json[r'arrival_time_period']),
        properties: RequestTimeFilterFastProperty.listFromJson(json[r'properties']),
    );

  static List<RequestTimeFilterFastArrivalOneToManySearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterFastArrivalOneToManySearch>[]
      : json.map((v) => RequestTimeFilterFastArrivalOneToManySearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterFastArrivalOneToManySearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterFastArrivalOneToManySearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterFastArrivalOneToManySearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalOneToManySearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalOneToManySearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterFastArrivalOneToManySearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterFastArrivalOneToManySearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

