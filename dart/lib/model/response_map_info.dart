part of openapi.api;

class ResponseMapInfo {
  
  List<ResponseMapInfoMap> maps = [];
  ResponseMapInfo();

  @override
  String toString() {
    return 'ResponseMapInfo[maps=$maps, ]';
  }

  ResponseMapInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    maps = ResponseMapInfoMap.listFromJson(json['maps']);
  }

  Map<String, dynamic> toJson() {
    return {
      'maps': maps
    };
  }

  static List<ResponseMapInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMapInfo>() : json.map((value) => new ResponseMapInfo.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfo> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfo.fromJson(value));
    }
    return map;
  }
}

