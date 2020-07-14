part of openapi.api;

class ResponseTimeFilterPostcodeDistrictProperties {
  
  ResponseTravelTimeStatistics travelTimeReachable = null;
  
  ResponseTravelTimeStatistics travelTimeAll = null;
  
  double coverage = null;

  ResponseTimeFilterPostcodeDistrictProperties({
    this.travelTimeReachable,
    this.travelTimeAll,
    this.coverage,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrictProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage, ]';
  }

  ResponseTimeFilterPostcodeDistrictProperties.fromJson(Map<String, dynamic> json) {
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

  static List<ResponseTimeFilterPostcodeDistrictProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodeDistrictProperties>() : json.map((value) => ResponseTimeFilterPostcodeDistrictProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeDistrictProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeDistrictProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrictProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrictProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeDistrictProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeDistrictProperties.listFromJson(value);
       });
     }
     return map;
  }
}

