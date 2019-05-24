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
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['distance'] == null) {
      distance = null;
    } else {
          distance = json['distance'];
    }
    if (json['fares'] == null) {
      fares = null;
    } else {
      fares = new ResponseFares.fromJson(json['fares']);
    }
    if (json['route'] == null) {
      route = null;
    } else {
      route = new ResponseRoute.fromJson(json['route']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (distance != null)
      json['distance'] = distance;
    if (fares != null)
      json['fares'] = fares;
    if (route != null)
      json['route'] = route;
    return json;
  }

  static List<ResponseRoutesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesProperties>() : json.map((value) => new ResponseRoutesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesProperties.fromJson(value));
    }
    return map;
  }
}

