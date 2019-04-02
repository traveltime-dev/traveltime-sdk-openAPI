part of openapi.api;

class ResponseTimeFilterPostcodeSectorProperties {
  
  ResponseTravelTimeStatistics travelTimeReachable = null;
  
  ResponseTravelTimeStatistics travelTimeAll = null;
  
  double coverage = null;
  ResponseTimeFilterPostcodeSectorProperties();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectorProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage, ]';
  }

  ResponseTimeFilterPostcodeSectorProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTimeReachable = new ResponseTravelTimeStatistics.fromJson(json['travel_time_reachable']);
    travelTimeAll = new ResponseTravelTimeStatistics.fromJson(json['travel_time_all']);
    coverage = json['coverage'];
  }

  Map<String, dynamic> toJson() {
    return {
      'travel_time_reachable': travelTimeReachable,
      'travel_time_all': travelTimeAll,
      'coverage': coverage
    };
  }

  static List<ResponseTimeFilterPostcodeSectorProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSectorProperties>() : json.map((value) => new ResponseTimeFilterPostcodeSectorProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSectorProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSectorProperties.fromJson(value));
    }
    return map;
  }
}

