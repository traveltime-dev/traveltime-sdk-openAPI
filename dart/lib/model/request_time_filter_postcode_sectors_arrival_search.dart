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
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    reachablePostcodesThreshold = json['reachable_postcodes_threshold'];
    properties = RequestTimeFilterPostcodeSectorsProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'reachable_postcodes_threshold': reachablePostcodesThreshold,
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodeSectorsArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeSectorsArrivalSearch>() : json.map((value) => new RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectorsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeSectorsArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeSectorsArrivalSearch.fromJson(value));
    }
    return map;
  }
}

