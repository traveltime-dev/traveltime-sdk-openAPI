//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeFilterFastArrivalManyToOneSearch {
  /// Returns a new [RequestTimeFilterFastArrivalManyToOneSearch] instance.
  RequestTimeFilterFastArrivalManyToOneSearch({
    @required this.id,
    @required this.arrivalLocationId,
    this.departureLocationIds = const [],
    @required this.transportation,
    @required this.travelTime,
    @required this.arrivalTimePeriod,
    this.properties = const [],
  });

  String id;

  String arrivalLocationId;

  List<String> departureLocationIds;

  RequestTransportationFast transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  RequestArrivalTimePeriod arrivalTimePeriod;

  List<RequestTimeFilterFastProperty> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeFilterFastArrivalManyToOneSearch &&
     other.id == id &&
     other.arrivalLocationId == arrivalLocationId &&
     other.departureLocationIds == departureLocationIds &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.arrivalTimePeriod == arrivalTimePeriod &&
     other.properties == properties;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (arrivalLocationId == null ? 0 : arrivalLocationId.hashCode) +
    (departureLocationIds == null ? 0 : departureLocationIds.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (arrivalTimePeriod == null ? 0 : arrivalTimePeriod.hashCode) +
    (properties == null ? 0 : properties.hashCode);

  @override
  String toString() => 'RequestTimeFilterFastArrivalManyToOneSearch[id=$id, arrivalLocationId=$arrivalLocationId, departureLocationIds=$departureLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'arrival_location_id'] = arrivalLocationId;
      json[r'departure_location_ids'] = departureLocationIds;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'arrival_time_period'] = arrivalTimePeriod;
      json[r'properties'] = properties;
    return json;
  }

  /// Returns a new [RequestTimeFilterFastArrivalManyToOneSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeFilterFastArrivalManyToOneSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeFilterFastArrivalManyToOneSearch(
        id: json[r'id'],
        arrivalLocationId: json[r'arrival_location_id'],
        departureLocationIds: json[r'departure_location_ids'] == null
          ? null
          : (json[r'departure_location_ids'] as List).cast<String>(),
        transportation: RequestTransportationFast.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        arrivalTimePeriod: RequestArrivalTimePeriod.fromJson(json[r'arrival_time_period']),
        properties: RequestTimeFilterFastProperty.listFromJson(json[r'properties']),
    );

  static List<RequestTimeFilterFastArrivalManyToOneSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterFastArrivalManyToOneSearch>[]
      : json.map((v) => RequestTimeFilterFastArrivalManyToOneSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeFilterFastArrivalManyToOneSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeFilterFastArrivalManyToOneSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeFilterFastArrivalManyToOneSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalManyToOneSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalManyToOneSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeFilterFastArrivalManyToOneSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

