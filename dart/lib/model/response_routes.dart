part of openapi.api;

class ResponseRoutes {
  
  List<ResponseRoutesResult> results = [];
  ResponseRoutes();

  @override
  String toString() {
    return 'ResponseRoutes[results=$results, ]';
  }

  ResponseRoutes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ResponseRoutesResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseRoutes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutes>() : json.map((value) => new ResponseRoutes.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutes.fromJson(value));
    }
    return map;
  }
}

