part of openapi.api;

class ResponseTimeMapWkt {
  
  List<ResponseTimeMapWktResult> results = [];
  ResponseTimeMapWkt();

  @override
  String toString() {
    return 'ResponseTimeMapWkt[results=$results, ]';
  }

  ResponseTimeMapWkt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ResponseTimeMapWktResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseTimeMapWkt> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapWkt>() : json.map((value) => new ResponseTimeMapWkt.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWkt> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapWkt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapWkt.fromJson(value));
    }
    return map;
  }
}

