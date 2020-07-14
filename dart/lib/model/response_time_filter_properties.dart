part of openapi.api;

class ResponseTimeFilterProperties {
  
  int travelTime = null;
  
  int distance = null;
  
  List<ResponseDistanceBreakdownItem> distanceBreakdown = [];
  
  ResponseFares fares = null;
  
  ResponseRoute route = null;

  ResponseTimeFilterProperties({
    this.travelTime,
    this.distance,
    this.distanceBreakdown,
    this.fares,
    this.route,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterProperties[travelTime=$travelTime, distance=$distance, distanceBreakdown=$distanceBreakdown, fares=$fares, route=$route, ]';
  }

  ResponseTimeFilterProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    distance = json['distance'];
    distanceBreakdown = (json['distance_breakdown'] == null) ?
      null :
      ResponseDistanceBreakdownItem.listFromJson(json['distance_breakdown']);
    fares = (json['fares'] == null) ?
      null :
      ResponseFares.fromJson(json['fares']);
    route = (json['route'] == null) ?
      null :
      ResponseRoute.fromJson(json['route']);
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
    return json == null ? List<ResponseTimeFilterProperties>() : json.map((value) => ResponseTimeFilterProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterProperties.listFromJson(value);
       });
     }
     return map;
  }
}

