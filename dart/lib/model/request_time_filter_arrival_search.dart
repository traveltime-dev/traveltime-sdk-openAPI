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

  RequestTimeFilterArrivalSearch({
    this.id,
    this.departureLocationIds,
    this.arrivalLocationId,
    this.transportation,
    this.travelTime,
    this.arrivalTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestTimeFilterArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationIds = (json['departure_location_ids'] == null) ?
      null :
      (json['departure_location_ids'] as List).cast<String>();
    arrivalLocationId = json['arrival_location_id'];
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
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
    if (departureLocationIds != null)
      json['departure_location_ids'] = departureLocationIds;
    if (arrivalLocationId != null)
      json['arrival_location_id'] = arrivalLocationId;
    if (transportation != null)
      json['transportation'] = transportation;
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterArrivalSearch>() : json.map((value) => RequestTimeFilterArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

