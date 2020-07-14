part of openapi.api;

class ResponseRoute {
  
  DateTime departureTime = null;
  
  DateTime arrivalTime = null;
  
  List<ResponseRoutePart> parts = [];

  ResponseRoute({
    this.departureTime,
    this.arrivalTime,
    this.parts,
  });

  @override
  String toString() {
    return 'ResponseRoute[departureTime=$departureTime, arrivalTime=$arrivalTime, parts=$parts, ]';
  }

  ResponseRoute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureTime = (json['departure_time'] == null) ?
      null :
      DateTime.parse(json['departure_time']);
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
    parts = (json['parts'] == null) ?
      null :
      ResponseRoutePart.listFromJson(json['parts']);
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
    return json == null ? List<ResponseRoute>() : json.map((value) => ResponseRoute.fromJson(value)).toList();
  }

  static Map<String, ResponseRoute> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoute>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoute.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoute-objects as value to a dart map
  static Map<String, List<ResponseRoute>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoute>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoute.listFromJson(value);
       });
     }
     return map;
  }
}

