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
    if (json['min_lat'] == null) {
      minLat = null;
    } else {
          minLat = json['min_lat'];
    }
    if (json['max_lat'] == null) {
      maxLat = null;
    } else {
          maxLat = json['max_lat'];
    }
    if (json['min_lng'] == null) {
      minLng = null;
    } else {
          minLng = json['min_lng'];
    }
    if (json['max_lng'] == null) {
      maxLng = null;
    } else {
          maxLng = json['max_lng'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (minLat != null)
      json['min_lat'] = minLat;
    if (maxLat != null)
      json['max_lat'] = maxLat;
    if (minLng != null)
      json['min_lng'] = minLng;
    if (maxLng != null)
      json['max_lng'] = maxLng;
    return json;
  }

  static List<ResponseBox> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseBox>() : json.map((value) => new ResponseBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBox> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseBox>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseBox.fromJson(value));
    }
    return map;
  }
}

