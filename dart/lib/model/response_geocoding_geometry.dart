part of openapi.api;

class ResponseGeocodingGeometry {
  
  String type = null;
  
  List<double> coordinates = [];
  ResponseGeocodingGeometry();

  @override
  String toString() {
    return 'ResponseGeocodingGeometry[type=$type, coordinates=$coordinates, ]';
  }

  ResponseGeocodingGeometry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    coordinates = ((json['coordinates'] ?? []) as List).map((item) => item as double).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates
    };
  }

  static List<ResponseGeocodingGeometry> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocodingGeometry>() : json.map((value) => new ResponseGeocodingGeometry.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeometry> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingGeometry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingGeometry.fromJson(value));
    }
    return map;
  }
}

