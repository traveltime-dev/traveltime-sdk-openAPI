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
    boundingBoxes = (json['bounding_boxes'] == null) ?
      null :
      ResponseBoundingBox.listFromJson(json['bounding_boxes']);
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeMapProperties.fromJson(json['properties']);
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
    return json == null ? List<ResponseTimeMapBoundingBoxesResult>() : json.map((value) => ResponseTimeMapBoundingBoxesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapBoundingBoxesResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapBoundingBoxesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapBoundingBoxesResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapBoundingBoxesResult-objects as value to a dart map
  static Map<String, List<ResponseTimeMapBoundingBoxesResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapBoundingBoxesResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapBoundingBoxesResult.listFromJson(value);
       });
     }
     return map;
  }
}

