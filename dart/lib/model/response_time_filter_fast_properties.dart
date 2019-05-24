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
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['fares'] == null) {
      fares = null;
    } else {
      fares = new ResponseFaresFast.fromJson(json['fares']);
    }
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
    return json == null ? new List<ResponseTimeFilterFastProperties>() : json.map((value) => new ResponseTimeFilterFastProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFastProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFastProperties.fromJson(value));
    }
    return map;
  }
}

