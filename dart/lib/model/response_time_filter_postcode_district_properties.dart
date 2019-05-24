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

  static List<ResponseTimeFilterPostcodeDistrictProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrictProperties>() : json.map((value) => new ResponseTimeFilterPostcodeDistrictProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrictProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrictProperties.fromJson(value));
    }
    return map;
  }
}

