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
    coordinates = (json['coordinates'] == null) ?
      null :
      (json['coordinates'] as List).cast<double>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (coordinates != null)
      json['coordinates'] = coordinates;
    return json;
  }

  static List<ResponseGeocodingGeometry> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseGeocodingGeometry>() : json.map((value) => ResponseGeocodingGeometry.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeometry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseGeocodingGeometry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseGeocodingGeometry.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingGeometry-objects as value to a dart map
  static Map<String, List<ResponseGeocodingGeometry>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseGeocodingGeometry>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseGeocodingGeometry.listFromJson(value);
       });
     }
     return map;
  }
}

