part of openapi.api;

class ResponseTimeFilterLocation {
  
  String id = null;
  
  List<ResponseTimeFilterProperties> properties = [];
  ResponseTimeFilterLocation();

  @override
  String toString() {
    return 'ResponseTimeFilterLocation[id=$id, properties=$properties, ]';
  }

  ResponseTimeFilterLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = ResponseTimeFilterProperties.listFromJson(json['properties']);
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

  static List<ResponseTimeFilterLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterLocation>() : json.map((value) => new ResponseTimeFilterLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterLocation.fromJson(value));
    }
    return map;
  }
}

