part of openapi.api;

class RequestLocation {
  
  String id = null;
  
  Coords coords = null;
  RequestLocation();

  @override
  String toString() {
    return 'RequestLocation[id=$id, coords=$coords, ]';
  }

  RequestLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    coords = new Coords.fromJson(json['coords']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'coords': coords
    };
  }

  static List<RequestLocation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestLocation>() : json.map((value) => new RequestLocation.fromJson(value)).toList();
  }

  static Map<String, RequestLocation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestLocation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestLocation.fromJson(value));
    }
    return map;
  }
}

