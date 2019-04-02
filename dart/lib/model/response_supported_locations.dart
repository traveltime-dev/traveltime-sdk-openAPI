part of openapi.api;

class ResponseSupportedLocations {
  
  List<ResponseSupportedLocation> locations = [];
  
  List<String> unsupportedLocations = [];
  ResponseSupportedLocations();

  @override
  String toString() {
    return 'ResponseSupportedLocations[locations=$locations, unsupportedLocations=$unsupportedLocations, ]';
  }

  ResponseSupportedLocations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = ResponseSupportedLocation.listFromJson(json['locations']);
    unsupportedLocations = ((json['unsupported_locations'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'locations': locations,
      'unsupported_locations': unsupportedLocations
    };
  }

  static List<ResponseSupportedLocations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseSupportedLocations>() : json.map((value) => new ResponseSupportedLocations.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseSupportedLocations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseSupportedLocations.fromJson(value));
    }
    return map;
  }
}

