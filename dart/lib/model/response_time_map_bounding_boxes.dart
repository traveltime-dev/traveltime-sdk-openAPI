part of openapi.api;

class ResponseTimeMapBoundingBoxes {
  
  List<ResponseTimeMapBoundingBoxesResult> results = [];

  ResponseTimeMapBoundingBoxes({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeMapBoundingBoxes[results=$results, ]';
  }

  ResponseTimeMapBoundingBoxes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeMapBoundingBoxesResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeMapBoundingBoxes> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMapBoundingBoxes>() : json.map((value) => ResponseTimeMapBoundingBoxes.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapBoundingBoxes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapBoundingBoxes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapBoundingBoxes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapBoundingBoxes-objects as value to a dart map
  static Map<String, List<ResponseTimeMapBoundingBoxes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapBoundingBoxes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapBoundingBoxes.listFromJson(value);
       });
     }
     return map;
  }
}

