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
    if (json['travel_time_reachable'] == null) {
      travelTimeReachable = null;
    } else {
      travelTimeReachable = new ResponseTravelTimeStatistics.fromJson(json['travel_time_reachable']);
    }
    if (json['travel_time_all'] == null) {
      travelTimeAll = null;
    } else {
      travelTimeAll = new ResponseTravelTimeStatistics.fromJson(json['travel_time_all']);
    }
    if (json['coverage'] == null) {
      coverage = null;
    } else {
          coverage = json['coverage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (travelTimeReachable != null)
      json['travel_time_reachable'] = travelTimeReachable;
    if (travelTimeAll != null)
      json['travel_time_all'] = travelTimeAll;
    if (coverage != null)
      json['coverage'] = coverage;
    return json;
  }

  static List<ResponseTimeFilterPostcodeSectorProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSectorProperties>() : json.map((value) => new ResponseTimeFilterPostcodeSectorProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSectorProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSectorProperties.fromJson(value));
    }
    return map;
  }
}

