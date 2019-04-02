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
    results = ResponseTimeFilterFastResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseTimeFilterFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFast>() : json.map((value) => new ResponseTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFast>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFast.fromJson(value));
    }
    return map;
  }
}

