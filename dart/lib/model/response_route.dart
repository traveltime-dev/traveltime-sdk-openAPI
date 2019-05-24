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
    if (json['departure_time'] == null) {
      departureTime = null;
    } else {
      departureTime = DateTime.parse(json['departure_time']);
    }
    if (json['arrival_time'] == null) {
      arrivalTime = null;
    } else {
      arrivalTime = DateTime.parse(json['arrival_time']);
    }
    if (json['parts'] == null) {
      parts = null;
    } else {
      parts = ResponseRoutePart.listFromJson(json['parts']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (departureTime != null)
      json['departure_time'] = departureTime == null ? null : departureTime.toUtc().toIso8601String();
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (parts != null)
      json['parts'] = parts;
    return json;
  }

  static List<ResponseRoute> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoute>() : json.map((value) => new ResponseRoute.fromJson(value)).toList();
  }

  static Map<String, ResponseRoute> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoute.fromJson(value));
    }
    return map;
  }
}

