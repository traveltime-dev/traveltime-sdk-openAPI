part of openapi.api;

class ResponseTimeFilterPostcodesProperties {
  
  int travelTime = null;
  
  int distance = null;
  ResponseTimeFilterPostcodesProperties();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodesProperties[travelTime=$travelTime, distance=$distance, ]';
  }

  ResponseTimeFilterPostcodesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    travelTime = json['travel_time'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'travel_time': travelTime,
      'distance': distance
    };
  }

  static List<ResponseTimeFilterPostcodesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodesProperties>() : json.map((value) => new ResponseTimeFilterPostcodesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodesProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodesProperties.fromJson(value));
    }
    return map;
  }
}

