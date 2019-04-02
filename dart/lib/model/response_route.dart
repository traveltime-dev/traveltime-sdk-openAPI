part of openapi.api;

class ResponseRoute {
  
  DateTime departureTime = null;
  
  DateTime arrivalTime = null;
  
  List<ResponseRoutePart> parts = [];
  ResponseRoute();

  @override
  String toString() {
    return 'ResponseRoute[departureTime=$departureTime, arrivalTime=$arrivalTime, parts=$parts, ]';
  }

  ResponseRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    parts = ResponseRoutePart.listFromJson(json['parts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'parts': parts
    };
  }

  static List<ResponseRoute> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoute>() : json.map((value) => new ResponseRoute.fromJson(value)).toList();
  }

  static Map<String, ResponseRoute> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoute.fromJson(value));
    }
    return map;
  }
}

