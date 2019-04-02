part of openapi.api;

class RequestTimeFilterArrivalSearch {
  
  String id = null;
  
  List<String> departureLocationIds = [];
  
  String arrivalLocationId = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  List<RequestTimeFilterProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationIds = ((json['departure_location_ids'] ?? []) as List).map((item) => item as String).toList();
    arrivalLocationId = json['arrival_location_id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    properties = RequestTimeFilterProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'departure_location_ids': departureLocationIds,
      'arrival_location_id': arrivalLocationId,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterArrivalSearch>() : json.map((value) => new RequestTimeFilterArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterArrivalSearch.fromJson(value));
    }
    return map;
  }
}

