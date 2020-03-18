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
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeFilterPostcodesProperties.listFromJson(json['properties']);
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
    return json == null ? List<ResponseTimeFilterPostcode>() : json.map((value) => ResponseTimeFilterPostcode.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcode-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcode>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcode>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcode.listFromJson(value);
       });
     }
     return map;
  }
}

