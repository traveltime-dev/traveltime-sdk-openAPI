part of openapi.api;

class RequestRoutesDepartureSearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportation transportation = null;
  
  DateTime departureTime = null;
  
  List<RequestRoutesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestRoutesDepartureSearch();

  @override
  String toString() {
    return 'RequestRoutesDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestRoutesDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = ((json['arrival_location_ids'] ?? []) as List).map((item) => item as String).toList();
    transportation = new RequestTransportation.fromJson(json['transportation']);
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    properties = RequestRoutesProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'departure_location_id': departureLocationId,
      'arrival_location_ids': arrivalLocationIds,
      'transportation': transportation,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestRoutesDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutesDepartureSearch>() : json.map((value) => new RequestRoutesDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutesDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutesDepartureSearch.fromJson(value));
    }
    return map;
  }
}

