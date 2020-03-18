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
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = (json['arrival_location_ids'] == null) ?
      null :
      (json['arrival_location_ids'] as List).cast<String>();
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportationFast.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTimePeriod = (json['arrival_time_period'] == null) ?
      null :
      RequestArrivalTimePeriod.fromJson(json['arrival_time_period']);
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterFastProperty.listFromJson(json['properties']);
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
    return json == null ? List<RequestTimeFilterFastArrivalOneToManySearch>() : json.map((value) => RequestTimeFilterFastArrivalOneToManySearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalOneToManySearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterFastArrivalOneToManySearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterFastArrivalOneToManySearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalOneToManySearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalOneToManySearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterFastArrivalOneToManySearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterFastArrivalOneToManySearch.listFromJson(value);
       });
     }
     return map;
  }
}

