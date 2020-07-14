part of openapi.api;

class ResponseTimeFilter {
  
  List<ResponseTimeFilterResult> results = [];

  ResponseTimeFilter({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeFilter[results=$results, ]';
  }

  ResponseTimeFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeFilterResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilter> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilter>() : json.map((value) => ResponseTimeFilter.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilter.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilter-objects as value to a dart map
  static Map<String, List<ResponseTimeFilter>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilter>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilter.listFromJson(value);
       });
     }
     return map;
  }
}

