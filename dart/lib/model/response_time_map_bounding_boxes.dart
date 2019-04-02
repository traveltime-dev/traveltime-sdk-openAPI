part of openapi.api;

class ResponseTimeMapBoundingBoxes {
  
  List<ResponseTimeMapBoundingBoxesResult> results = [];
  ResponseTimeMapBoundingBoxes();

  @override
  String toString() {
    return 'ResponseTimeMapBoundingBoxes[results=$results, ]';
  }

  ResponseTimeMapBoundingBoxes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ResponseTimeMapBoundingBoxesResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseTimeMapBoundingBoxes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapBoundingBoxes>() : json.map((value) => new ResponseTimeMapBoundingBoxes.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapBoundingBoxes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapBoundingBoxes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapBoundingBoxes.fromJson(value));
    }
    return map;
  }
}

