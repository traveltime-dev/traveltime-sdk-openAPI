//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTimeMapArrivalSearch {
  /// Returns a new [RequestTimeMapArrivalSearch] instance.
  RequestTimeMapArrivalSearch({
    @required this.id,
    @required this.coords,
    @required this.transportation,
    @required this.travelTime,
    @required this.arrivalTime,
    this.properties = const [],
    this.range,
  });

  String id;

  Coords coords;

  RequestTransportation transportation;

  // minimum: 60
  // maximum: 14400
  int travelTime;

  DateTime arrivalTime;

  List<RequestTimeMapProperty> properties;

  RequestRangeNoMaxResults range;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTimeMapArrivalSearch &&
     other.id == id &&
     other.coords == coords &&
     other.transportation == transportation &&
     other.travelTime == travelTime &&
     other.arrivalTime == arrivalTime &&
     other.properties == properties &&
     other.range == range;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (coords == null ? 0 : coords.hashCode) +
    (transportation == null ? 0 : transportation.hashCode) +
    (travelTime == null ? 0 : travelTime.hashCode) +
    (arrivalTime == null ? 0 : arrivalTime.hashCode) +
    (properties == null ? 0 : properties.hashCode) +
    (range == null ? 0 : range.hashCode);

  @override
  String toString() => 'RequestTimeMapArrivalSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'coords'] = coords;
      json[r'transportation'] = transportation;
      json[r'travel_time'] = travelTime;
      json[r'arrival_time'] = arrivalTime.toUtc().toIso8601String();
    if (properties != null) {
      json[r'properties'] = properties;
    }
    if (range != null) {
      json[r'range'] = range;
    }
    return json;
  }

  /// Returns a new [RequestTimeMapArrivalSearch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTimeMapArrivalSearch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTimeMapArrivalSearch(
        id: json[r'id'],
        coords: Coords.fromJson(json[r'coords']),
        transportation: RequestTransportation.fromJson(json[r'transportation']),
        travelTime: json[r'travel_time'],
        arrivalTime: json[r'arrival_time'] == null
          ? null
          : DateTime.parse(json[r'arrival_time']),
        properties: RequestTimeMapProperty.listFromJson(json[r'properties']),
        range: RequestRangeNoMaxResults.fromJson(json[r'range']),
    );

  static List<RequestTimeMapArrivalSearch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeMapArrivalSearch>[]
      : json.map((v) => RequestTimeMapArrivalSearch.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTimeMapArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTimeMapArrivalSearch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTimeMapArrivalSearch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMapArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeMapArrivalSearch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTimeMapArrivalSearch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTimeMapArrivalSearch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

