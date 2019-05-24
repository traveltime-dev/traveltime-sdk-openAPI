part of openapi.api;

class ResponseBoundingBox {
  
  ResponseBox envelope = null;
  
  List<ResponseBox> boxes = [];
  ResponseBoundingBox();

  @override
  String toString() {
    return 'ResponseBoundingBox[envelope=$envelope, boxes=$boxes, ]';
  }

  ResponseBoundingBox.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['envelope'] == null) {
      envelope = null;
    } else {
      envelope = new ResponseBox.fromJson(json['envelope']);
    }
    if (json['boxes'] == null) {
      boxes = null;
    } else {
      boxes = ResponseBox.listFromJson(json['boxes']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (envelope != null)
      json['envelope'] = envelope;
    if (boxes != null)
      json['boxes'] = boxes;
    return json;
  }

  static List<ResponseBoundingBox> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseBoundingBox>() : json.map((value) => new ResponseBoundingBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBoundingBox> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseBoundingBox>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseBoundingBox.fromJson(value));
    }
    return map;
  }
}

