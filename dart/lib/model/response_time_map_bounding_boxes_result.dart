part of openapi.api;

class ResponseTimeMapBoundingBoxesResult {
  
  String searchId = null;
  
  List<ResponseBoundingBox> boundingBoxes = [];
  
  ResponseTimeMapProperties properties = null;
  ResponseTimeMapBoundingBoxesResult();

  @override
  String toString() {
    return 'ResponseTimeMapBoundingBoxesResult[searchId=$searchId, boundingBoxes=$boundingBoxes, properties=$properties, ]';
  }

  ResponseTimeMapBoundingBoxesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    boundingBoxes = ResponseBoundingBox.listFromJson(json['bounding_boxes']);
    properties = new ResponseTimeMapProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'bounding_boxes': boundingBoxes,
      'properties': properties
    };
  }

  static List<ResponseTimeMapBoundingBoxesResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapBoundingBoxesResult>() : json.map((value) => new ResponseTimeMapBoundingBoxesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapBoundingBoxesResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapBoundingBoxesResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapBoundingBoxesResult.fromJson(value));
    }
    return map;
  }
}

