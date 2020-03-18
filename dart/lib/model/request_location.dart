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
    coords = (json['coords'] == null) ?
      null :
      Coords.fromJson(json['coords']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (coords != null)
      json['coords'] = coords;
    return json;
  }

  static List<RequestLocation> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestLocation>() : json.map((value) => RequestLocation.fromJson(value)).toList();
  }

  static Map<String, RequestLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestLocation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestLocation-objects as value to a dart map
  static Map<String, List<RequestLocation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestLocation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestLocation.listFromJson(value);
       });
     }
     return map;
  }
}

