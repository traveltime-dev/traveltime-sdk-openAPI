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

  RequestTimeFilterDepartureSearch({
    this.id,
    this.departureLocationId,
    this.arrivalLocationIds,
    this.transportation,
    this.travelTime,
    this.departureTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestTimeFilterDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = (json['arrival_location_ids'] == null) ?
      null :
      (json['arrival_location_ids'] as List).cast<String>();
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = (json['departure_time'] == null) ?
      null :
      DateTime.parse(json['departure_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterProperty.listFromJson(json['properties']);
    range = (json['range'] == null) ?
      null :
      RequestRangeFull.fromJson(json['range']);
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
    if (departureTime != null)
      json['departure_time'] = departureTime == null ? null : departureTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterDepartureSearch>() : json.map((value) => RequestTimeFilterDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterDepartureSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterDepartureSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterDepartureSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterDepartureSearch.listFromJson(value);
       });
     }
     return map;
  }
}

