part of openapi.api;

class ResponseTimeFilterPostcodeSectors {
  
  List<ResponseTimeFilterPostcodeSectorsResult> results = [];
  ResponseTimeFilterPostcodeSectors();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectors[results=$results, ]';
  }

  ResponseTimeFilterPostcodeSectors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseTimeFilterPostcodeSectorsResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodeSectors> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSectors>() : json.map((value) => new ResponseTimeFilterPostcodeSectors.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSectors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSectors.fromJson(value));
    }
    return map;
  }
}

