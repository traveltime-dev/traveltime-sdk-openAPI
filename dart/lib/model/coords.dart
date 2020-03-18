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
    lat = (json['lat'] == null) ?
      null :
      json['lat'].toDouble();
    lng = (json['lng'] == null) ?
      null :
      json['lng'].toDouble();
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
    return json == null ? List<Coords>() : json.map((value) => Coords.fromJson(value)).toList();
  }

  static Map<String, Coords> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Coords>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Coords.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Coords-objects as value to a dart map
  static Map<String, List<Coords>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Coords>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Coords.listFromJson(value);
       });
     }
     return map;
  }
}

