part of openapi.api;

class RequestSupportedLocations {
  
  List<RequestLocation> locations = [];
  RequestSupportedLocations();

  @override
  String toString() {
    return 'RequestSupportedLocations[locations=$locations, ]';
  }

  RequestSupportedLocations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = RequestLocation.listFromJson(json['locations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'locations': locations
    };
  }

  static List<RequestSupportedLocations> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestSupportedLocations>() : json.map((value) => new RequestSupportedLocations.fromJson(value)).toList();
  }

  static Map<String, RequestSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestSupportedLocations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestSupportedLocations.fromJson(value));
    }
    return map;
  }
}

