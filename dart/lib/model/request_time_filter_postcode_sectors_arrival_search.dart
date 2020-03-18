part of openapi.api;

class RequestTimeFilterPostcodeSectorsArrivalSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  double reachablePostcodesThreshold = null;
  
  List<RequestTimeFilterPostcodeSectorsProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodeSectorsArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeSectorsArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
    reachablePostcodesThreshold = (json['reachable_postcodes_threshold'] == null) ?
      null :
      json['reachable_postcodes_threshold'].toDouble();
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterPostcodeSectorsProperty.listFromJson(json['properties']);
    range = (json['range'] == null) ?
      null :
      RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (transportation != null)
      json['transportation'] = transportation;
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (reachablePostcodesThreshold != null)
      json['reachable_postcodes_threshold'] = reachablePostcodesThreshold;
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterPostcodeSectorsArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterPostcodeSectorsArrivalSearch>() : json.map((value) => RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectorsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodeSectorsArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeSectorsArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeSectorsArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodeSectorsArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

