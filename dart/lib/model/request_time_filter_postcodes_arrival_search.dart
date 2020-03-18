part of openapi.api;

class RequestTimeFilterPostcodesArrivalSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  List<RequestTimeFilterPostcodesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodesArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodesArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterPostcodesProperty.listFromJson(json['properties']);
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
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterPostcodesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterPostcodesArrivalSearch>() : json.map((value) => RequestTimeFilterPostcodesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodesArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodesArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodesArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodesArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodesArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodesArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

