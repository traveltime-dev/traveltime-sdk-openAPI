part of openapi.api;

class ResponseTimeFilter {
  
  List<ResponseTimeFilterResult> results = [];
  ResponseTimeFilter();

  @override
  String toString() {
    return 'ResponseTimeFilter[results=$results, ]';
  }

  ResponseTimeFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ResponseTimeFilterResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
    };
  }

  static List<ResponseTimeFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilter>() : json.map((value) => new ResponseTimeFilter.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilter> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilter.fromJson(value));
    }
    return map;
  }
}

