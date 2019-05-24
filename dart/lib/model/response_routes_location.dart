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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ResponseRoutesProperties.listFromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseRoutesLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesLocation>() : json.map((value) => new ResponseRoutesLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesLocation.fromJson(value));
    }
    return map;
  }
}

