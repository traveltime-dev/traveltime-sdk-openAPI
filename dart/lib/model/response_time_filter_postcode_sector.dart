part of openapi.api;

class ResponseTimeFilterPostcodeSector {
  
  String code = null;
  
  ResponseTimeFilterPostcodeSectorProperties properties = null;

  ResponseTimeFilterPostcodeSector({
    this.code,
    this.properties,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSector[code=$code, properties=$properties, ]';
  }

  ResponseTimeFilterPostcodeSector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeFilterPostcodeSectorProperties.fromJson(json['properties']);
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
    return json == null ? List<ResponseTimeFilterPostcodeSector>() : json.map((value) => ResponseTimeFilterPostcodeSector.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSector> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeSector>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeSector.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSector-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSector>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeSector>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeSector.listFromJson(value);
       });
     }
     return map;
  }
}

