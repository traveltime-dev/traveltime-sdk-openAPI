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
    if (json['lat'] == null) {
      lat = null;
    } else {
          lat = json['lat'];
    }
    if (json['lng'] == null) {
      lng = null;
    } else {
          lng = json['lng'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lat != null)
      json['lat'] = lat;
    if (lng != null)
      json['lng'] = lng;
    return json;
  }

  static List<Coords> listFromJson(List<dynamic> json) {
    return json == null ? new List<Coords>() : json.map((value) => new Coords.fromJson(value)).toList();
  }

  static Map<String, Coords> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Coords>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Coords.fromJson(value));
    }
    return map;
  }
}

