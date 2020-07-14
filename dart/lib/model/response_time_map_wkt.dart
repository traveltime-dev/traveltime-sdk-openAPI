part of openapi.api;

class ResponseTimeMapWkt {
  
  List<ResponseTimeMapWktResult> results = [];

  ResponseTimeMapWkt({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeMapWkt[results=$results, ]';
  }

  ResponseTimeMapWkt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeMapWktResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeMapWkt> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMapWkt>() : json.map((value) => ResponseTimeMapWkt.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapWkt> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapWkt>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapWkt.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapWkt-objects as value to a dart map
  static Map<String, List<ResponseTimeMapWkt>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapWkt>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapWkt.listFromJson(value);
       });
     }
     return map;
  }
}

