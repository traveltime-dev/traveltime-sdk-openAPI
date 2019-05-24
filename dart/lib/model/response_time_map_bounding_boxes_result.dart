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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['bounding_boxes'] == null) {
      boundingBoxes = null;
    } else {
      boundingBoxes = ResponseBoundingBox.listFromJson(json['bounding_boxes']);
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
    if (boundingBoxes != null)
      json['bounding_boxes'] = boundingBoxes;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeMapBoundingBoxesResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapBoundingBoxesResult>() : json.map((value) => new ResponseTimeMapBoundingBoxesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapBoundingBoxesResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapBoundingBoxesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapBoundingBoxesResult.fromJson(value));
    }
    return map;
  }
}

