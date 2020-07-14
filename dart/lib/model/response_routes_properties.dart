part of openapi.api;

class ResponseRoutesProperties {
  
  int travelTime = null;
  
  int distance = null;
  
  ResponseFares fares = null;
  
  ResponseRoute route = null;

  ResponseRoutesProperties({
    this.travelTime,
    this.distance,
    this.fares,
    this.route,
  });

  @override
  String toString() {
    return 'ResponseRoutesProperties[travelTime=$travelTime, distance=$distance, fares=$fares, route=$route, ]';
  }

  ResponseRoutesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    distance = json['distance'];
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
    if (fares != null)
      json['fares'] = fares;
    if (route != null)
      json['route'] = route;
    return json;
  }

  static List<ResponseRoutesProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseRoutesProperties>() : json.map((value) => ResponseRoutesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoutesProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoutesProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesProperties-objects as value to a dart map
  static Map<String, List<ResponseRoutesProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoutesProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoutesProperties.listFromJson(value);
       });
     }
     return map;
  }
}

