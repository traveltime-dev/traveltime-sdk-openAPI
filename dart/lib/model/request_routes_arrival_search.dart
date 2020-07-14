part of openapi.api;

class RequestRoutesArrivalSearch {
  
  String id = null;
  
  List<String> departureLocationIds = [];
  
  String arrivalLocationId = null;
  
  RequestTransportation transportation = null;
  
  DateTime arrivalTime = null;
  
  List<RequestRoutesProperty> properties = [];
  
  RequestRangeFull range = null;

  RequestRoutesArrivalSearch({
    this.id,
    this.departureLocationIds,
    this.arrivalLocationId,
    this.transportation,
    this.arrivalTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestRoutesArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestRoutesArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationIds = (json['departure_location_ids'] == null) ?
      null :
      (json['departure_location_ids'] as List).cast<String>();
    arrivalLocationId = json['arrival_location_id'];
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestRoutesProperty.listFromJson(json['properties']);
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
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestRoutesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestRoutesArrivalSearch>() : json.map((value) => RequestRoutesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestRoutesArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestRoutesArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestRoutesArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestRoutesArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestRoutesArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestRoutesArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

