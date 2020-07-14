part of openapi.api;

class ResponseTimeFilterFastProperties {
  
  int travelTime = null;
  
  ResponseFaresFast fares = null;

  ResponseTimeFilterFastProperties({
    this.travelTime,
    this.fares,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterFastProperties[travelTime=$travelTime, fares=$fares, ]';
  }

  ResponseTimeFilterFastProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    fares = (json['fares'] == null) ?
      null :
      ResponseFaresFast.fromJson(json['fares']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (fares != null)
      json['fares'] = fares;
    return json;
  }

  static List<ResponseTimeFilterFastProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterFastProperties>() : json.map((value) => ResponseTimeFilterFastProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterFastProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterFastProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFastProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFastProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterFastProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterFastProperties.listFromJson(value);
       });
     }
     return map;
  }
}

