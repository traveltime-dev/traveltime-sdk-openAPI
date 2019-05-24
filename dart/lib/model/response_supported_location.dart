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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['map_name'] == null) {
      mapName = null;
    } else {
          mapName = json['map_name'];
    }
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
    return json == null ? new List<ResponseSupportedLocation>() : json.map((value) => new ResponseSupportedLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseSupportedLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseSupportedLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseSupportedLocation.fromJson(value));
    }
    return map;
  }
}

