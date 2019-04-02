part of openapi.api;

class RequestTimeFilterFastArrivalManyToOneSearch {
  
  String id = null;
  
  String arrivalLocationId = null;
  
  List<String> departureLocationIds = [];
  
  RequestTransportationFast transportation = null;
  
  int travelTime = null;
  
  RequestArrivalTimePeriod arrivalTimePeriod = null;
  
  List<RequestTimeFilterFastProperty> properties = [];
  RequestTimeFilterFastArrivalManyToOneSearch();

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalManyToOneSearch[id=$id, arrivalLocationId=$arrivalLocationId, departureLocationIds=$departureLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }

  RequestTimeFilterFastArrivalManyToOneSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    arrivalLocationId = json['arrival_location_id'];
    departureLocationIds = ((json['departure_location_ids'] ?? []) as List).map((item) => item as String).toList();
    transportation = new RequestTransportationFast.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTimePeriod = new RequestArrivalTimePeriod.fromJson(json['arrival_time_period']);
    properties = RequestTimeFilterFastProperty.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'arrival_location_id': arrivalLocationId,
      'departure_location_ids': departureLocationIds,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time_period': arrivalTimePeriod,
      'properties': properties
    };
  }

  static List<RequestTimeFilterFastArrivalManyToOneSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalManyToOneSearch>() : json.map((value) => new RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalManyToOneSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalManyToOneSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value));
    }
    return map;
  }
}

