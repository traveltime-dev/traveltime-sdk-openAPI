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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['shapes'] == null) {
      shapes = null;
    } else {
      shapes = ResponseShape.listFromJson(json['shapes']);
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
    if (shapes != null)
      json['shapes'] = shapes;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeMapResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapResult>() : json.map((value) => new ResponseTimeMapResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapResult.fromJson(value));
    }
    return map;
  }
}

