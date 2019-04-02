part of openapi.api;

class RequestTimeFilterPostcodeSectorsDepartureSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  double reachablePostcodesThreshold = null;
  
  List<RequestTimeFilterPostcodeSectorsProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodeSectorsDepartureSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeSectorsDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    reachablePostcodesThreshold = json['reachable_postcodes_threshold'];
    properties = RequestTimeFilterPostcodeSectorsProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'reachable_postcodes_threshold': reachablePostcodesThreshold,
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodeSectorsDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeSectorsDepartureSearch>() : json.map((value) => new RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectorsDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeSectorsDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeSectorsDepartureSearch.fromJson(value));
    }
    return map;
  }
}

