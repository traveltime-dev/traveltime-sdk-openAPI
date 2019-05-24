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
    if (json['distance_breakdown'] == null) {
      distanceBreakdown = null;
    } else {
      distanceBreakdown = ResponseDistanceBreakdownItem.listFromJson(json['distance_breakdown']);
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
    if (distanceBreakdown != null)
      json['distance_breakdown'] = distanceBreakdown;
    if (fares != null)
      json['fares'] = fares;
    if (route != null)
      json['route'] = route;
    return json;
  }

  static List<ResponseTimeFilterProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterProperties>() : json.map((value) => new ResponseTimeFilterProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterProperties.fromJson(value));
    }
    return map;
  }
}

