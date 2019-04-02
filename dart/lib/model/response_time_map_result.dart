part of openapi.api;

class ResponseTimeMapResult {
  
  String searchId = null;
  
  List<ResponseShape> shapes = [];
  
  ResponseTimeMapProperties properties = null;
  ResponseTimeMapResult();

  @override
  String toString() {
    return 'ResponseTimeMapResult[searchId=$searchId, shapes=$shapes, properties=$properties, ]';
  }

  ResponseTimeMapResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    shapes = ResponseShape.listFromJson(json['shapes']);
    properties = new ResponseTimeMapProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'shapes': shapes,
      'properties': properties
    };
  }

  static List<ResponseTimeMapResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapResult>() : json.map((value) => new ResponseTimeMapResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapResult.fromJson(value));
    }
    return map;
  }
}

