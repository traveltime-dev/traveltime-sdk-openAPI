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
    results = (json['results'] == null) ?
      null :
      ResponseRoutesResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseRoutes> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseRoutes>() : json.map((value) => ResponseRoutes.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoutes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoutes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutes-objects as value to a dart map
  static Map<String, List<ResponseRoutes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoutes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoutes.listFromJson(value);
       });
     }
     return map;
  }
}

