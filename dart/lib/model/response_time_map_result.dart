part of openapi.api;

class ResponseTimeMapResult {
  
  String searchId = null;
  
  List<ResponseShape> shapes = [];
  
  ResponseTimeMapProperties properties = null;

  ResponseTimeMapResult({
    this.searchId,
    this.shapes,
    this.properties,
  });

  @override
  String toString() {
    return 'ResponseTimeMapResult[searchId=$searchId, shapes=$shapes, properties=$properties, ]';
  }

  ResponseTimeMapResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    shapes = (json['shapes'] == null) ?
      null :
      ResponseShape.listFromJson(json['shapes']);
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeMapProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (shapes != null)
      json['shapes'] = shapes;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeMapResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMapResult>() : json.map((value) => ResponseTimeMapResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapResult.listFromJson(value);
       });
     }
     return map;
  }
}

