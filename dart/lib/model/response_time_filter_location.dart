part of openapi.api;

class ResponseTimeFilterLocation {
  
  String id = null;
  
  List<ResponseTimeFilterProperties> properties = [];

  ResponseTimeFilterLocation({
    this.id,
    this.properties,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterLocation[id=$id, properties=$properties, ]';
  }

  ResponseTimeFilterLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeFilterProperties.listFromJson(json['properties']);
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
    return json == null ? List<ResponseTimeFilterLocation>() : json.map((value) => ResponseTimeFilterLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterLocation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterLocation-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterLocation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterLocation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterLocation.listFromJson(value);
       });
     }
     return map;
  }
}

