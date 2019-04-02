part of openapi.api;

class ResponseBox {
  
  double minLat = null;
  
  double maxLat = null;
  
  double minLng = null;
  
  double maxLng = null;
  ResponseBox();

  @override
  String toString() {
    return 'ResponseBox[minLat=$minLat, maxLat=$maxLat, minLng=$minLng, maxLng=$maxLng, ]';
  }

  ResponseBox.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minLat = json['min_lat'];
    maxLat = json['max_lat'];
    minLng = json['min_lng'];
    maxLng = json['max_lng'];
  }

  Map<String, dynamic> toJson() {
    return {
      'min_lat': minLat,
      'max_lat': maxLat,
      'min_lng': minLng,
      'max_lng': maxLng
    };
  }

  static List<ResponseBox> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseBox>() : json.map((value) => new ResponseBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBox> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseBox>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseBox.fromJson(value));
    }
    return map;
  }
}

