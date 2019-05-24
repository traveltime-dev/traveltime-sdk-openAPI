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
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = new ResponseTimeFilterPostcodeDistrictProperties.fromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeFilterPostcodeDistrict> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrict>() : json.map((value) => new ResponseTimeFilterPostcodeDistrict.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrict> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrict>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrict.fromJson(value));
    }
    return map;
  }
}

