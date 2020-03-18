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
    results = (json['results'] == null) ?
      null :
      ResponseTimeFilterFastResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterFast> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterFast>() : json.map((value) => ResponseTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterFast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFast-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterFast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterFast.listFromJson(value);
       });
     }
     return map;
  }
}

