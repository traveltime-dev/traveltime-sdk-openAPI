part of openapi.api;

class ResponseTimeFilterPostcodeDistrict {
  
  String code = null;
  
  ResponseTimeFilterPostcodeDistrictProperties properties = null;
  ResponseTimeFilterPostcodeDistrict();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrict[code=$code, properties=$properties, ]';
  }

  ResponseTimeFilterPostcodeDistrict.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    properties = new ResponseTimeFilterPostcodeDistrictProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'properties': properties
    };
  }

  static List<ResponseTimeFilterPostcodeDistrict> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrict>() : json.map((value) => new ResponseTimeFilterPostcodeDistrict.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrict> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrict>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrict.fromJson(value));
    }
    return map;
  }
}

