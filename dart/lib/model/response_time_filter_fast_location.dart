part of openapi.api;

class ResponseTimeFilterFastLocation {
  
  String id = null;
  
  List<ResponseTimeFilterFastProperties> properties = [];
  ResponseTimeFilterFastLocation();

  @override
  String toString() {
    return 'ResponseTimeFilterFastLocation[id=$id, properties=$properties, ]';
  }

  ResponseTimeFilterFastLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    properties = ResponseTimeFilterFastProperties.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'properties': properties
    };
  }

  static List<ResponseTimeFilterFastLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFastLocation>() : json.map((value) => new ResponseTimeFilterFastLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFastLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFastLocation.fromJson(value));
    }
    return map;
  }
}

