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
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = ResponseSupportedLocation.listFromJson(json['locations']);
    }
    if (json['unsupported_locations'] == null) {
      unsupportedLocations = null;
    } else {
      unsupportedLocations = (json['unsupported_locations'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locations != null)
      json['locations'] = locations;
    if (unsupportedLocations != null)
      json['unsupported_locations'] = unsupportedLocations;
    return json;
  }

  static List<ResponseSupportedLocations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseSupportedLocations>() : json.map((value) => new ResponseSupportedLocations.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseSupportedLocations>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseSupportedLocations.fromJson(value));
    }
    return map;
  }
}

