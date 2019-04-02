part of openapi.api;

class ResponseTimeFilterProperties {
  
  int travelTime = null;
  
  int distance = null;
  
  List<ResponseDistanceBreakdownItem> distanceBreakdown = [];
  
  ResponseFares fares = null;
  
  ResponseRoute route = null;
  ResponseTimeFilterProperties();

  @override
  String toString() {
    return 'ResponseTimeFilterProperties[travelTime=$travelTime, distance=$distance, distanceBreakdown=$distanceBreakdown, fares=$fares, route=$route, ]';
  }

  ResponseTimeFilterProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    distance = json['distance'];
    distanceBreakdown = ResponseDistanceBreakdownItem.listFromJson(json['distance_breakdown']);
    fares = new ResponseFares.fromJson(json['fares']);
    route = new ResponseRoute.fromJson(json['route']);
  }

  Map<String, dynamic> toJson() {
    return {
      'travel_time': travelTime,
      'distance': distance,
      'distance_breakdown': distanceBreakdown,
      'fares': fares,
      'route': route
    };
  }

  static List<ResponseTimeFilterProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterProperties>() : json.map((value) => new ResponseTimeFilterProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterProperties.fromJson(value));
    }
    return map;
  }
}

