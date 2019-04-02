part of openapi.api;

class ResponseTimeFilterPostcodeDistrictProperties {
  
  ResponseTravelTimeStatistics travelTimeReachable = null;
  
  ResponseTravelTimeStatistics travelTimeAll = null;
  
  double coverage = null;
  ResponseTimeFilterPostcodeDistrictProperties();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrictProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage, ]';
  }

  ResponseTimeFilterPostcodeDistrictProperties.fromJson(Map<String, dynamic> json) {
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

  static List<ResponseTimeFilterPostcodeDistrictProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrictProperties>() : json.map((value) => new ResponseTimeFilterPostcodeDistrictProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrictProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrictProperties.fromJson(value));
    }
    return map;
  }
}

