part of openapi.api;

class ResponseTimeFilterPostcodeSector {
  
  String code = null;
  
  ResponseTimeFilterPostcodeSectorProperties properties = null;
  ResponseTimeFilterPostcodeSector();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSector[code=$code, properties=$properties, ]';
  }

  ResponseTimeFilterPostcodeSector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    properties = new ResponseTimeFilterPostcodeSectorProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'properties': properties
    };
  }

  static List<ResponseTimeFilterPostcodeSector> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSector>() : json.map((value) => new ResponseTimeFilterPostcodeSector.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSector> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSector>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSector.fromJson(value));
    }
    return map;
  }
}

