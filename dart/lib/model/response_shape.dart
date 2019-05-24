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
    if (json['shell'] == null) {
      shell = null;
    } else {
      shell = Coords.listFromJson(json['shell']);
    }
    if (json['holes'] == null) {
      holes = null;
    } else {
      holes = List.listFromJson(json['holes']);
    }
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
    return json == null ? new List<ResponseShape>() : json.map((value) => new ResponseShape.fromJson(value)).toList();
  }

  static Map<String, ResponseShape> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseShape>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseShape.fromJson(value));
    }
    return map;
  }
}

