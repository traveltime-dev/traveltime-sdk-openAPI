part of openapi.api;

class ResponseTimeFilterPostcodes {
  
  List<ResponseTimeFilterPostcodesResult> results = [];
  ResponseTimeFilterPostcodes();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodes[results=$results, ]';
  }

  ResponseTimeFilterPostcodes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseTimeFilterPostcodesResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodes>() : json.map((value) => new ResponseTimeFilterPostcodes.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodes.fromJson(value));
    }
    return map;
  }
}

