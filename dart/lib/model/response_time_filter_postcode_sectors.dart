part of openapi.api;

class ResponseTimeFilterPostcodeSectors {
  
  List<ResponseTimeFilterPostcodeSectorsResult> results = [];

  ResponseTimeFilterPostcodeSectors({
    this.results,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectors[results=$results, ]';
  }

  ResponseTimeFilterPostcodeSectors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeFilterPostcodeSectorsResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodeSectors> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodeSectors>() : json.map((value) => ResponseTimeFilterPostcodeSectors.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeSectors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeSectors.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeSectors-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeSectors>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeSectors>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeSectors.listFromJson(value);
       });
     }
     return map;
  }
}

