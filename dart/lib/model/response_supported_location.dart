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
    return {
      'id': id,
      'map_name': mapName
    };
  }

  static List<ResponseSupportedLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseSupportedLocation>() : json.map((value) => new ResponseSupportedLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseSupportedLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseSupportedLocation.fromJson(value));
    }
    return map;
  }
}

