part of openapi.api;

class ResponseTimeFilterPostcodes {
  
  List<ResponseTimeFilterPostcodesResult> results = [];

  ResponseTimeFilterPostcodes({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodes[results=$results, ]';
  }

  ResponseTimeFilterPostcodes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeFilterPostcodesResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodes> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodes>() : json.map((value) => ResponseTimeFilterPostcodes.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodes-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodes.listFromJson(value);
       });
     }
     return map;
  }
}

