part of openapi.api;

class ResponseTimeMap {
  
  List<ResponseTimeMapResult> results = [];
  ResponseTimeMap();

  @override
  String toString() {
    return 'ResponseTimeMap[results=$results, ]';
  }

  ResponseTimeMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ResponseTimeMapResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseTimeMap> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMap>() : json.map((value) => new ResponseTimeMap.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMap> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMap.fromJson(value));
    }
    return map;
  }
}

