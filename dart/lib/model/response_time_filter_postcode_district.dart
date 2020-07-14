part of openapi.api;

class ResponseTimeFilterPostcodeDistrict {
  
  String code = null;
  
  ResponseTimeFilterPostcodeDistrictProperties properties = null;

  ResponseTimeFilterPostcodeDistrict({
    this.code,
    this.properties,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrict[code=$code, properties=$properties, ]';
  }

  ResponseTimeFilterPostcodeDistrict.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeFilterPostcodeDistrictProperties.fromJson(json['properties']);
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
    return json == null ? List<ResponseTimeFilterPostcodeDistrict>() : json.map((value) => ResponseTimeFilterPostcodeDistrict.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrict> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeDistrict>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeDistrict.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrict-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrict>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeDistrict>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeDistrict.listFromJson(value);
       });
     }
     return map;
  }
}

