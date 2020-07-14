part of openapi.api;

class ResponseSupportedLocations {
  
  List<ResponseSupportedLocation> locations = [];
  
  List<String> unsupportedLocations = [];

  ResponseSupportedLocations({
    this.locations,
    this.unsupportedLocations,
  });

  @override
  String toString() {
    return 'ResponseSupportedLocations[locations=$locations, unsupportedLocations=$unsupportedLocations, ]';
  }

  ResponseSupportedLocations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = (json['locations'] == null) ?
      null :
      ResponseSupportedLocation.listFromJson(json['locations']);
    unsupportedLocations = (json['unsupported_locations'] == null) ?
      null :
      (json['unsupported_locations'] as List).cast<String>();
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
    return json == null ? List<ResponseSupportedLocations>() : json.map((value) => ResponseSupportedLocations.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseSupportedLocations>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseSupportedLocations.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseSupportedLocations-objects as value to a dart map
  static Map<String, List<ResponseSupportedLocations>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseSupportedLocations>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseSupportedLocations.listFromJson(value);
       });
     }
     return map;
  }
}

