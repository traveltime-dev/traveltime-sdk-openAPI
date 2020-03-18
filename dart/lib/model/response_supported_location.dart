part of openapi.api;

class ResponseSupportedLocation {
  
  String id = null;
  
  String mapName = null;
  ResponseSupportedLocation();

  @override
  String toString() {
    return 'ResponseSupportedLocation[id=$id, mapName=$mapName, ]';
  }

  ResponseSupportedLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    mapName = json['map_name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (mapName != null)
      json['map_name'] = mapName;
    return json;
  }

  static List<ResponseSupportedLocation> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseSupportedLocation>() : json.map((value) => ResponseSupportedLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseSupportedLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseSupportedLocation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseSupportedLocation-objects as value to a dart map
  static Map<String, List<ResponseSupportedLocation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseSupportedLocation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseSupportedLocation.listFromJson(value);
       });
     }
     return map;
  }
}

