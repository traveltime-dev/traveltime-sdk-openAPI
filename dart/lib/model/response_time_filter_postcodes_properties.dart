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
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['distance'] == null) {
      distance = null;
    } else {
          distance = json['distance'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (distance != null)
      json['distance'] = distance;
    return json;
  }

  static List<ResponseTimeFilterPostcodesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodesProperties>() : json.map((value) => new ResponseTimeFilterPostcodesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodesProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodesProperties.fromJson(value));
    }
    return map;
  }
}

