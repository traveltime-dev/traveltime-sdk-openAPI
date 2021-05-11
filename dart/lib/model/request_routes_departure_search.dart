//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestRoutesDepartureSearch {
  /// Returns a new [RequestRoutesDepartureSearch] instance.
  RequestRoutesDepartureSearch({
    @required this.id,
    @required this.departureLocationId,
    this.arrivalLocationIds = const [],
    @required this.transportation,
    @required this.departureTime,
    this.properties = const [],
    this.range,
  });

  String id;

  String departureLocationId;

  List<String> arrivalLocationIds;

  RequestTransportation transportation;

  DateTime departureTime;

  List<RequestRoutesProperty> properties;

  RequestRangeFull range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestRoutesDepartureSearch &&
     other.id == id &&
     other.departureLocationId == departureLocationId &&
     other.arrivalLocationIds == arrivalLocationIds &&
     other.transportation == transportation &&
     other.departureTime == departureTime &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (departureLocationId == null ? 0 : departureLocationId.hashCode) +
    (arrivalLocationIds == null ? 0 : arrivalLocationIds.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (departureTime == null ? 0 : departureTime.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestRoutesDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, departureTime=$departureTime, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'departure_location_id'] = departureLocationId;
      json[r'arrival_location_ids'] = arrivalLocationIds;
      json[r'transportation'] = transportation;
      json[r'departure_time'] = departureTime.toUtc().toIso8601String();
      json[r'properties'] = properties;
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestRoutesDepartureSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestRoutesDepartureSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestRoutesDepartureSearch(
        id: json[r'id'],
        departureLocationId: json[r'departure_location_id'],
        arrivalLocationIds: json[r'arrival_location_ids'] == null
          ? null
          : (json[r'arrival_location_ids'] as List).cast<String>(),
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        departureTime: json[r'departure_time'] == null
          ? null
          : DateTime.parse(json[r'departure_time']),
        properties: RequestRoutesProperty.listFromJson(json[r'properties']),
        range: RequestRangeFull.fromJson(json[r'range']),
    );

  static List<RequestRoutesDepartureSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRoutesDepartureSearch>[]
      : json.map((v) => RequestRoutesDepartureSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestRoutesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestRoutesDepartureSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestRoutesDepartureSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestRoutesDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestRoutesDepartureSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestRoutesDepartureSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestRoutesDepartureSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

