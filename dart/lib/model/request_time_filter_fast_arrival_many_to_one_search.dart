part of openapi.api;

class RequestTimeFilterFastArrivalManyToOneSearch {
  
  String id = null;
  
  String arrivalLocationId = null;
  
  List<String> departureLocationIds = [];
  
  RequestTransportationFast transportation = null;
  
  int travelTime = null;
  
  RequestArrivalTimePeriod arrivalTimePeriod = null;
  //enum arrivalTimePeriodEnum {  weekday_morning,  };{
  
  List<RequestTimeFilterFastProperty> properties = [];
  RequestTimeFilterFastArrivalManyToOneSearch();

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalManyToOneSearch[id=$id, arrivalLocationId=$arrivalLocationId, departureLocationIds=$departureLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }

  RequestTimeFilterFastArrivalManyToOneSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['arrival_location_id'] == null) {
      arrivalLocationId = null;
    } else {
          arrivalLocationId = json['arrival_location_id'];
    }
    if (json['departure_location_ids'] == null) {
      departureLocationIds = null;
    } else {
      departureLocationIds = (json['departure_location_ids'] as List).cast<String>();
    }
    if (json['transportation'] == null) {
      transportation = null;
    } else {
      transportation = new RequestTransportationFast.fromJson(json['transportation']);
    }
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['arrival_time_period'] == null) {
      arrivalTimePeriod = null;
    } else {
      arrivalTimePeriod = new RequestArrivalTimePeriod.fromJson(json['arrival_time_period']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = RequestTimeFilterFastProperty.listFromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (arrivalLocationId != null)
      json['arrival_location_id'] = arrivalLocationId;
    if (departureLocationIds != null)
      json['departure_location_ids'] = departureLocationIds;
    if (transportation != null)
      json['transportation'] = transportation;
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (arrivalTimePeriod != null)
      json['arrival_time_period'] = arrivalTimePeriod;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<RequestTimeFilterFastArrivalManyToOneSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalManyToOneSearch>() : json.map((value) => new RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalManyToOneSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalManyToOneSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value));
    }
    return map;
  }
}

