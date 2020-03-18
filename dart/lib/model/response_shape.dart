part of openapi.api;

class ResponseShape {
  
  List<Coords> shell = [];
  
  List<List<Coords>> holes = [];
  ResponseShape();

  @override
  String toString() {
    return 'ResponseShape[shell=$shell, holes=$holes, ]';
  }

  ResponseShape.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shell = (json['shell'] == null) ?
      null :
      Coords.listFromJson(json['shell']);
    holes = (json['holes'] == null) ?
      null :
      List.listFromJson(json['holes']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (shell != null)
      json['shell'] = shell;
    if (holes != null)
      json['holes'] = holes;
    return json;
  }

  static List<ResponseShape> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseShape>() : json.map((value) => ResponseShape.fromJson(value)).toList();
  }

  static Map<String, ResponseShape> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseShape>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseShape.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseShape-objects as value to a dart map
  static Map<String, List<ResponseShape>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseShape>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseShape.listFromJson(value);
       });
     }
     return map;
  }
}

