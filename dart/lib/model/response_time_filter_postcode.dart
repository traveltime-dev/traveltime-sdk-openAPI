part of openapi.api;

class ResponseTimeFilterPostcode {
  
  String code = null;
  
  List<ResponseTimeFilterPostcodesProperties> properties = [];
  ResponseTimeFilterPostcode();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcode[code=$code, properties=$properties, ]';
  }

  ResponseTimeFilterPostcode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    properties = ResponseTimeFilterPostcodesProperties.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'properties': properties
    };
  }

  static List<ResponseTimeFilterPostcode> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcode>() : json.map((value) => new ResponseTimeFilterPostcode.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcode> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcode.fromJson(value));
    }
    return map;
  }
}

