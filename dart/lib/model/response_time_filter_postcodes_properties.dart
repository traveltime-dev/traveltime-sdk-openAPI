part of openapi.api;

class ResponseTimeFilterPostcodesProperties {
  
  int travelTime = null;
  
  int distance = null;

  ResponseTimeFilterPostcodesProperties({
    this.travelTime,
    this.distance,
  });

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
    Map <String, dynamic> json = {};
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (distance != null)
      json['distance'] = distance;
    return json;
  }

  static List<ResponseTimeFilterPostcodesProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodesProperties>() : json.map((value) => ResponseTimeFilterPostcodesProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodesProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodesProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodesProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodesProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodesProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodesProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodesProperties.listFromJson(value);
       });
     }
     return map;
  }
}

