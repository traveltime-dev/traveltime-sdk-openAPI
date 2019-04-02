part of openapi.api;

class ResponseGeocodingGeoJsonFeature {
  
  String type = null;
  
  ResponseGeocodingGeometry geometry = null;
  
  ResponseGeocodingProperties properties = null;
  ResponseGeocodingGeoJsonFeature();

  @override
  String toString() {
    return 'ResponseGeocodingGeoJsonFeature[type=$type, geometry=$geometry, properties=$properties, ]';
  }

  ResponseGeocodingGeoJsonFeature.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    geometry = new ResponseGeocodingGeometry.fromJson(json['geometry']);
    properties = new ResponseGeocodingProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'geometry': geometry,
      'properties': properties
    };
  }

  static List<ResponseGeocodingGeoJsonFeature> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocodingGeoJsonFeature>() : json.map((value) => new ResponseGeocodingGeoJsonFeature.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeoJsonFeature> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingGeoJsonFeature>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingGeoJsonFeature.fromJson(value));
    }
    return map;
  }
}

