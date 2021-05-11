//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestRoutesArrivalSearch {
  /// Returns a new [RequestRoutesArrivalSearch] instance.
  RequestRoutesArrivalSearch({
    @required this.id,
    this.departureLocationIds = const [],
    @required this.arrivalLocationId,
    @required this.transportation,
    @required this.arrivalTime,
    this.properties = const [],
    this.range,
  });

  String id;

  List<String> departureLocationIds;

  String arrivalLocationId;

  RequestTransportation transportation;

  DateTime arrivalTime;

  List<RequestRoutesProperty> properties;

  RequestRangeFull range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestRoutesArrivalSearch &&
     other.id == id &&
     other.departureLocationIds == departureLocationIds &&
     other.arrivalLocationId == arrivalLocationId &&
     other.transportation == transportation &&
     other.arrivalTime == arrivalTime &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (departureLocationIds == null ? 0 : departureLocationIds.hashCode) +
    (arrivalLocationId == null ? 0 : arrivalLocationId.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (arrivalTime == null ? 0 : arrivalTime.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestRoutesArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, arrivalTime=$arrivalTime, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'departure_location_ids'] = departureLocationIds;
      json[r'arrival_location_id'] = arrivalLocationId;
      json[r'transportation'] = transportation;
      json[r'arrival_time'] = arrivalTime.toUtc().toIso8601String();
      json[r'properties'] = properties;
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestRoutesArrivalSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestRoutesArrivalSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestRoutesArrivalSearch(
        id: json[r'id'],
        departureLocationIds: json[r'departure_location_ids'] == null
          ? null
          : (json[r'departure_location_ids'] as List).cast<String>(),
        arrivalLocationId: json[r'arrival_location_id'],
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        arrivalTime: json[r'arrival_time'] == null
          ? null
          : DateTime.parse(json[r'arrival_time']),
        properties: RequestRoutesProperty.listFromJson(json[r'properties']),
        range: RequestRangeFull.fromJson(json[r'range']),
    );

  static List<RequestRoutesArrivalSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRoutesArrivalSearch>[]
      : json.map((v) => RequestRoutesArrivalSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestRoutesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestRoutesArrivalSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestRoutesArrivalSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestRoutesArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestRoutesArrivalSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestRoutesArrivalSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestRoutesArrivalSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

