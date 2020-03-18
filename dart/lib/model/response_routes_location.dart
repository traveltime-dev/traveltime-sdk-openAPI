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
    properties = (json['properties'] == null) ?
      null :
      ResponseRoutesProperties.listFromJson(json['properties']);
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
    return json == null ? List<ResponseRoutesLocation>() : json.map((value) => ResponseRoutesLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoutesLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoutesLocation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutesLocation-objects as value to a dart map
  static Map<String, List<ResponseRoutesLocation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoutesLocation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoutesLocation.listFromJson(value);
       });
     }
     return map;
  }
}

