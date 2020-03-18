part of openapi.api;

class ResponseTimeMapWktResult {
  
  String searchId = null;
  
  String shape = null;
  
  ResponseTimeMapProperties properties = null;
  ResponseTimeMapWktResult();

  @override
  String toString() {
    return 'ResponseTimeMapWktResult[searchId=$searchId, shape=$shape, properties=$properties, ]';
  }

  ResponseTimeMapWktResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    shape = json['shape'];
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeMapProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (shape != null)
      json['shape'] = shape;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeMapWktResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMapWktResult>() : json.map((value) => ResponseTimeMapWktResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWktResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapWktResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapWktResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapWktResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapWktResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapWktResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapWktResult.listFromJson(value);
       });
     }
     return map;
  }
}

