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
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseTimeMapWktResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeMapWkt> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapWkt>() : json.map((value) => new ResponseTimeMapWkt.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWkt> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapWkt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapWkt.fromJson(value));
    }
    return map;
  }
}

