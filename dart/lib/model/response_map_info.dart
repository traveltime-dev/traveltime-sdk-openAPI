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
    maps = (json['maps'] == null) ?
      null :
      ResponseMapInfoMap.listFromJson(json['maps']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (maps != null)
      json['maps'] = maps;
    return json;
  }

  static List<ResponseMapInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseMapInfo>() : json.map((value) => ResponseMapInfo.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseMapInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseMapInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfo-objects as value to a dart map
  static Map<String, List<ResponseMapInfo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseMapInfo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseMapInfo.listFromJson(value);
       });
     }
     return map;
  }
}

