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
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['features'] == null) {
      features = null;
    } else {
      features = new ResponseMapInfoFeatures.fromJson(json['features']);
    }
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
    return json == null ? new List<ResponseMapInfoMap>() : json.map((value) => new ResponseMapInfoMap.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoMap> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoMap.fromJson(value));
    }
    return map;
  }
}

