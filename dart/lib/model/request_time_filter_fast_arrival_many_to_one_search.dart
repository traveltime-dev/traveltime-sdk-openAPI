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

  RequestTimeFilterFastArrivalManyToOneSearch({
    this.id,
    this.arrivalLocationId,
    this.departureLocationIds,
    this.transportation,
    this.travelTime,
    this.arrivalTimePeriod,
    this.properties,
  });

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalManyToOneSearch[id=$id, arrivalLocationId=$arrivalLocationId, departureLocationIds=$departureLocationIds, transportation=$transportation, travelTime=$travelTime, arrivalTimePeriod=$arrivalTimePeriod, properties=$properties, ]';
  }

  RequestTimeFilterFastArrivalManyToOneSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    arrivalLocationId = json['arrival_location_id'];
    departureLocationIds = (json['departure_location_ids'] == null) ?
      null :
      (json['departure_location_ids'] as List).cast<String>();
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
    return json == null ? List<RequestTimeFilterFastArrivalManyToOneSearch>() : json.map((value) => RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalManyToOneSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterFastArrivalManyToOneSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterFastArrivalManyToOneSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalManyToOneSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalManyToOneSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterFastArrivalManyToOneSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(value);
       });
     }
     return map;
  }
}

