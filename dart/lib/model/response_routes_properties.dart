part of openapi.api;

class ResponseRoutesProperties {
  
  int travelTime = null;
  
  int distance = null;
  
  ResponseFares fares = null;
  
  ResponseRoute route = null;
  ResponseRoutesProperties();

  @override
  String toString() {
    return 'ResponseRoutesProperties[travelTime=$travelTime, distance=$distance, fares=$fares, route=$route, ]';
  }

  ResponseRoutesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    distance = json['distance'];
    fares = new ResponseFares.fromJson(json['fares']);
    route = new ResponseRoute.fromJson(json['route']);
  }

  Map<String, dynamic> toJson() {
    return {
      'travel_time': travelTime,
      'distance': distance,
      'fares': fares,
      'route': route
    };
  }

  static List<ResponseRoutesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesProperties>() : json.map((value) => new ResponseRoutesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesProperties.fromJson(value));
    }
    return map;
  }
}

