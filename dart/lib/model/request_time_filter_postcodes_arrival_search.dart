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
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    properties = RequestTimeFilterPostcodesProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodesArrivalSearch>() : json.map((value) => new RequestTimeFilterPostcodesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodesArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodesArrivalSearch.fromJson(value));
    }
    return map;
  }
}

