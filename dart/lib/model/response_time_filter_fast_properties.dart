part of openapi.api;

class ResponseTimeFilterFastProperties {
  
  int travelTime = null;
  
  ResponseFaresFast fares = null;
  ResponseTimeFilterFastProperties();

  @override
  String toString() {
    return 'ResponseTimeFilterFastProperties[travelTime=$travelTime, fares=$fares, ]';
  }

  ResponseTimeFilterFastProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    fares = new ResponseFaresFast.fromJson(json['fares']);
  }

  Map<String, dynamic> toJson() {
    return {
      'travel_time': travelTime,
      'fares': fares
    };
  }

  static List<ResponseTimeFilterFastProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFastProperties>() : json.map((value) => new ResponseTimeFilterFastProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFastProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFastProperties.fromJson(value));
    }
    return map;
  }
}

