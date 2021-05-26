//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeMapDepartureSearch {
  /// Returns a new [RequestTimeMapDepartureSearch] instance.
  RequestTimeMapDepartureSearch({
    @required this.id,
    @required this.coords,
    @required this.transportation,
    @required this.travelTime,
    @required this.departureTime,
    this.properties = const [],
    this.range,
    this.levelOfDetail,
  });

  String id;

  Coords coords;

  RequestTransportation transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  DateTime departureTime;

  List<RequestTimeMapProperty> properties;

  RequestRangeNoMaxResults range;

  RequestLevelOfDetail levelOfDetail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeMapDepartureSearch &&
     other.id == id &&
     other.coords == coords &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.departureTime == departureTime &&
     other.properties == properties &&
     other.range == range &&
     other.levelOfDetail == levelOfDetail;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (coords == null ? 0 : coords.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (departureTime == null ? 0 : departureTime.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode) +
    (levelOfDetail == null ? 0 : levelOfDetail.hashCode);

  @override
  String toString() => 'RequestTimeMapDepartureSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, levelOfDetail=$levelOfDetail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'coords'] = coords;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'departure_time'] = departureTime.toUtc().toIso8601String();
    if (properties != null) {
      json[r'properties'] = properties;
    }
    if (range != null) {
      json[r'range'] = range;
    }
    if (levelOfDetail != null) {
      json[r'level_of_detail'] = levelOfDetail;
    }
    return json;
  }

  /// Returns a new [RequestTimeMapDepartureSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeMapDepartureSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeMapDepartureSearch(
        id: json[r'id'],
        coords: Coords.fromJson(json[r'coords']),
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        departureTime: json[r'departure_time'] == null
          ? null
          : DateTime.parse(json[r'departure_time']),
        properties: RequestTimeMapProperty.listFromJson(json[r'properties']),
        range: RequestRangeNoMaxResults.fromJson(json[r'range']),
        levelOfDetail: RequestLevelOfDetail.fromJson(json[r'level_of_detail']),
    );

  static List<RequestTimeMapDepartureSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeMapDepartureSearch>[]
      : json.map((v) => RequestTimeMapDepartureSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeMapDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeMapDepartureSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeMapDepartureSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMapDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeMapDepartureSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeMapDepartureSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeMapDepartureSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

