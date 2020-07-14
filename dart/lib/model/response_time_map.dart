part of openapi.api;

class ResponseTimeMap {
  
  List<ResponseTimeMapResult> results = [];

  ResponseTimeMap({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeMap[results=$results, ]';
  }

  ResponseTimeMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeMapResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeMap> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMap>() : json.map((value) => ResponseTimeMap.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMap.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMap-objects as value to a dart map
  static Map<String, List<ResponseTimeMap>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMap>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMap.listFromJson(value);
       });
     }
     return map;
  }
}

