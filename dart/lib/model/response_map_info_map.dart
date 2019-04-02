part of openapi.api;

class ResponseMapInfoMap {
  
  String name = null;
  
  ResponseMapInfoFeatures features = null;
  ResponseMapInfoMap();

  @override
  String toString() {
    return 'ResponseMapInfoMap[name=$name, features=$features, ]';
  }

  ResponseMapInfoMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    features = new ResponseMapInfoFeatures.fromJson(json['features']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'features': features
    };
  }

  static List<ResponseMapInfoMap> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMapInfoMap>() : json.map((value) => new ResponseMapInfoMap.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoMap> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoMap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoMap.fromJson(value));
    }
    return map;
  }
}

