part of openapi.api;

class ResponseMapInfoMap {
  
  String name = null;
  
  ResponseMapInfoFeatures features = null;

  ResponseMapInfoMap({
    this.name,
    this.features,
  });

  @override
  String toString() {
    return 'ResponseMapInfoMap[name=$name, features=$features, ]';
  }

  ResponseMapInfoMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    features = (json['features'] == null) ?
      null :
      ResponseMapInfoFeatures.fromJson(json['features']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (features != null)
      json['features'] = features;
    return json;
  }

  static List<ResponseMapInfoMap> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseMapInfoMap>() : json.map((value) => ResponseMapInfoMap.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoMap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseMapInfoMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseMapInfoMap.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoMap-objects as value to a dart map
  static Map<String, List<ResponseMapInfoMap>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseMapInfoMap>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseMapInfoMap.listFromJson(value);
       });
     }
     return map;
  }
}

