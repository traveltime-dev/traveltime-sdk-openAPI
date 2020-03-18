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
    envelope = (json['envelope'] == null) ?
      null :
      ResponseBox.fromJson(json['envelope']);
    boxes = (json['boxes'] == null) ?
      null :
      ResponseBox.listFromJson(json['boxes']);
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
    return json == null ? List<ResponseBoundingBox>() : json.map((value) => ResponseBoundingBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBoundingBox> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseBoundingBox>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseBoundingBox.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseBoundingBox-objects as value to a dart map
  static Map<String, List<ResponseBoundingBox>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseBoundingBox>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseBoundingBox.listFromJson(value);
       });
     }
     return map;
  }
}

