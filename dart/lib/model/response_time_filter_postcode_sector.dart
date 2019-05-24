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
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = new ResponseTimeFilterPostcodeSectorProperties.fromJson(json['properties']);
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

  static List<ResponseTimeFilterPostcodeSector> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSector>() : json.map((value) => new ResponseTimeFilterPostcodeSector.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSector> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSector>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSector.fromJson(value));
    }
    return map;
  }
}

