part of openapi.api;

class ResponseTimeFilterFastLocation {
  
  String id = null;
  
  List<ResponseTimeFilterFastProperties> properties = [];

  ResponseTimeFilterFastLocation({
    this.id,
    this.properties,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterFastLocation[id=$id, properties=$properties, ]';
  }

  ResponseTimeFilterFastLocation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    properties = (json['properties'] == null) ?
      null :
      ResponseTimeFilterFastProperties.listFromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseTimeFilterFastLocation> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterFastLocation>() : json.map((value) => ResponseTimeFilterFastLocation.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastLocation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterFastLocation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterFastLocation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterFastLocation-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterFastLocation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterFastLocation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterFastLocation.listFromJson(value);
       });
     }
     return map;
  }
}

