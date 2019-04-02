part of openapi.api;

class ResponseRoutesLocation {
  
  String id = null;
  
  List<ResponseRoutesProperties> properties = [];
  ResponseRoutesLocation();

  @override
  String toString() {
    return 'ResponseRoutesLocation[id=$id, properties=$properties, ]';
  }

  ResponseRoutesLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    properties = ResponseRoutesProperties.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'properties': properties
    };
  }

  static List<ResponseRoutesLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesLocation>() : json.map((value) => new ResponseRoutesLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesLocation.fromJson(value));
    }
    return map;
  }
}

