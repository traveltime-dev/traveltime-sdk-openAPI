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
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ResponseTimeFilterPostcodesProperties.listFromJson(json['properties']);
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

  static List<ResponseTimeFilterPostcode> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcode>() : json.map((value) => new ResponseTimeFilterPostcode.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcode> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcode.fromJson(value));
    }
    return map;
  }
}

