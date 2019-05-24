part of openapi.api;

class ResponseTimeFilterFast {
  
  List<ResponseTimeFilterFastResult> results = [];
  ResponseTimeFilterFast();

  @override
  String toString() {
    return 'ResponseTimeFilterFast[results=$results, ]';
  }

  ResponseTimeFilterFast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseTimeFilterFastResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFast>() : json.map((value) => new ResponseTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFast.fromJson(value));
    }
    return map;
  }
}

