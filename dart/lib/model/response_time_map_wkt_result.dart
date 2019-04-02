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
    properties = new ResponseTimeMapProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'shape': shape,
      'properties': properties
    };
  }

  static List<ResponseTimeMapWktResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapWktResult>() : json.map((value) => new ResponseTimeMapWktResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWktResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapWktResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapWktResult.fromJson(value));
    }
    return map;
  }
}

