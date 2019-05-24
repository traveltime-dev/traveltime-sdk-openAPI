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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['shape'] == null) {
      shape = null;
    } else {
          shape = json['shape'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = new ResponseTimeMapProperties.fromJson(json['properties']);
    }
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
    return json == null ? new List<ResponseTimeMapWktResult>() : json.map((value) => new ResponseTimeMapWktResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWktResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapWktResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapWktResult.fromJson(value));
    }
    return map;
  }
}

