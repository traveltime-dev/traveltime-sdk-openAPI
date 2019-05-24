part of openapi.api;

class ResponseGeocoding {
  
  String type = null;
  
  List<ResponseGeocodingGeoJsonFeature> features = [];
  ResponseGeocoding();

  @override
  String toString() {
    return 'ResponseGeocoding[type=$type, features=$features, ]';
  }

  ResponseGeocoding.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['features'] == null) {
      features = null;
    } else {
      features = ResponseGeocodingGeoJsonFeature.listFromJson(json['features']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (features != null)
      json['features'] = features;
    return json;
  }

  static List<ResponseGeocoding> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocoding>() : json.map((value) => new ResponseGeocoding.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocoding> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocoding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocoding.fromJson(value));
    }
    return map;
  }
}

