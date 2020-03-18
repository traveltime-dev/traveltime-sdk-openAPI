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
    travelTimeReachable = (json['travel_time_reachable'] == null) ?
      null :
      ResponseTravelTimeStatistics.fromJson(json['travel_time_reachable']);
    travelTimeAll = (json['travel_time_all'] == null) ?
      null :
      ResponseTravelTimeStatistics.fromJson(json['travel_time_all']);
    coverage = (json['coverage'] == null) ?
      null :
      json['coverage'].toDouble();
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
    return json == null ? List<ResponseTimeFilterPostcodeSectorProperties>() : json.map((value) => ResponseTimeFilterPostcodeSectorProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeSectorProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeSectorProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSectorProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSectorProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeSectorProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeSectorProperties.listFromJson(value);
       });
     }
     return map;
  }
}

