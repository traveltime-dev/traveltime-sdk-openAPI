part of openapi.api;

class RequestTimeFilterDepartureSearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  List<RequestTimeFilterProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterDepartureSearch();

  @override
  String toString() {
    return 'RequestTimeFilterDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = ((json['arrival_location_ids'] ?? []) as List).map((item) => item as String).toList();
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    properties = RequestTimeFilterProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'departure_location_id': departureLocationId,
      'arrival_location_ids': arrivalLocationIds,
      'transportation': transportation,
      'travel_time': travelTime,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterDepartureSearch>() : json.map((value) => new RequestTimeFilterDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterDepartureSearch.fromJson(value));
    }
    return map;
  }
}

