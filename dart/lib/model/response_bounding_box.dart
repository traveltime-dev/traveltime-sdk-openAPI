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
    envelope = new ResponseBox.fromJson(json['envelope']);
    boxes = ResponseBox.listFromJson(json['boxes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'envelope': envelope,
      'boxes': boxes
    };
  }

  static List<ResponseBoundingBox> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseBoundingBox>() : json.map((value) => new ResponseBoundingBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBoundingBox> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseBoundingBox>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseBoundingBox.fromJson(value));
    }
    return map;
  }
}

