part of openapi.api;

class RequestTimeFilterFastArrivalOneToManySearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportationFast transportation = null;
  
  int travelTime = null;
  
  RequestArrivalTimePeriod arrivalTimePeriod = null;
  //enum arrivalTimePeriodEnum {  weekday_morning,  };{
  
  List<RequestTimeFilterFastProperty> properties = [];
  RequestTimeFilterFastArrivalOneToManySearch();

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalOneToManySearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }

  RequestTimeFilterFastArrivalOneToManySearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['departure_location_id'] == null) {
      departureLocationId = null;
    } else {
          departureLocationId = json['departure_location_id'];
    }
    if (json['arrival_location_ids'] == null) {
      arrivalLocationIds = null;
    } else {
      arrivalLocationIds = (json['arrival_location_ids'] as List).cast<String>();
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
    if (departureLocationId != null)
      json['departure_location_id'] = departureLocationId;
    if (arrivalLocationIds != null)
      json['arrival_location_ids'] = arrivalLocationIds;
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

  static List<RequestTimeFilterFastArrivalOneToManySearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalOneToManySearch>() : json.map((value) => new RequestTimeFilterFastArrivalOneToManySearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalOneToManySearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalOneToManySearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalOneToManySearch.fromJson(value));
    }
    return map;
  }
}

