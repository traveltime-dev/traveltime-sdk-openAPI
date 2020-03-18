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
    type = json['type'];
    features = (json['features'] == null) ?
      null :
      ResponseGeocodingGeoJsonFeature.listFromJson(json['features']);
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
    return json == null ? List<ResponseGeocoding>() : json.map((value) => ResponseGeocoding.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocoding> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseGeocoding>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseGeocoding.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocoding-objects as value to a dart map
  static Map<String, List<ResponseGeocoding>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseGeocoding>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseGeocoding.listFromJson(value);
       });
     }
     return map;
  }
}

