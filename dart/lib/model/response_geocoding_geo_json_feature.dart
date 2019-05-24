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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['geometry'] == null) {
      geometry = null;
    } else {
      geometry = new ResponseGeocodingGeometry.fromJson(json['geometry']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = new ResponseGeocodingProperties.fromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (geometry != null)
      json['geometry'] = geometry;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<ResponseGeocodingGeoJsonFeature> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocodingGeoJsonFeature>() : json.map((value) => new ResponseGeocodingGeoJsonFeature.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeoJsonFeature> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingGeoJsonFeature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingGeoJsonFeature.fromJson(value));
    }
    return map;
  }
}

