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
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseRoutesResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseRoutes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutes>() : json.map((value) => new ResponseRoutes.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutes.fromJson(value));
    }
    return map;
  }
}

