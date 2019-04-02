part of openapi.api;

class Coords {
  
  double lat = null;
  
  double lng = null;
  Coords();

  @override
  String toString() {
    return 'Coords[lat=$lat, lng=$lng, ]';
  }

  Coords.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng
    };
  }

  static List<Coords> listFromJson(List<dynamic> json) {
    return json == null ? new List<Coords>() : json.map((value) => new Coords.fromJson(value)).toList();
  }

  static Map<String, Coords> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Coords>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new Coords.fromJson(value));
    }
    return map;
  }
}

