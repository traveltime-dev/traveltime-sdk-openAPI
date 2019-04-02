part of openapi.api;

class RequestTimeFilterFastArrivalOneToManySearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportationFast transportation = null;
  
  int travelTime = null;
  
  RequestArrivalTimePeriod arrivalTimePeriod = null;
  
  List<RequestTimeFilterFastProperty> properties = [];
  RequestTimeFilterFastArrivalOneToManySearch();

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalOneToManySearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }

  RequestTimeFilterFastArrivalOneToManySearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = ((json['arrival_location_ids'] ?? []) as List).map((item) => item as String).toList();
    transportation = new RequestTransportationFast.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTimePeriod = new RequestArrivalTimePeriod.fromJson(json['arrival_time_period']);
    properties = RequestTimeFilterFastProperty.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'departure_location_id': departureLocationId,
      'arrival_location_ids': arrivalLocationIds,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time_period': arrivalTimePeriod,
      'properties': properties
    };
  }

  static List<RequestTimeFilterFastArrivalOneToManySearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalOneToManySearch>() : json.map((value) => new RequestTimeFilterFastArrivalOneToManySearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalOneToManySearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalOneToManySearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalOneToManySearch.fromJson(value));
    }
    return map;
  }
}

