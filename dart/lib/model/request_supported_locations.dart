part of openapi.api;

class RequestSupportedLocations {
  
  List<RequestLocation> locations = [];

  RequestSupportedLocations({
    this.locations,
  });

  @override
  String toString() {
    return 'RequestSupportedLocations[locations=$locations, ]';
  }

  RequestSupportedLocations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = (json['locations'] == null) ?
      null :
      RequestLocation.listFromJson(json['locations']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locations != null)
      json['locations'] = locations;
    return json;
  }

  static List<RequestSupportedLocations> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestSupportedLocations>() : json.map((value) => RequestSupportedLocations.fromJson(value)).toList();
  }

  static Map<String, RequestSupportedLocations> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestSupportedLocations>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestSupportedLocations.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestSupportedLocations-objects as value to a dart map
  static Map<String, List<RequestSupportedLocations>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestSupportedLocations>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestSupportedLocations.listFromJson(value);
       });
     }
     return map;
  }
}

