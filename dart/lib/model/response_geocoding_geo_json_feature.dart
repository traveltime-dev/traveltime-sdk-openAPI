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
    geometry = (json['geometry'] == null) ?
      null :
      ResponseGeocodingGeometry.fromJson(json['geometry']);
    properties = (json['properties'] == null) ?
      null :
      ResponseGeocodingProperties.fromJson(json['properties']);
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
    return json == null ? List<ResponseGeocodingGeoJsonFeature>() : json.map((value) => ResponseGeocodingGeoJsonFeature.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeoJsonFeature> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseGeocodingGeoJsonFeature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseGeocodingGeoJsonFeature.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingGeoJsonFeature-objects as value to a dart map
  static Map<String, List<ResponseGeocodingGeoJsonFeature>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseGeocodingGeoJsonFeature>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseGeocodingGeoJsonFeature.listFromJson(value);
       });
     }
     return map;
  }
}

