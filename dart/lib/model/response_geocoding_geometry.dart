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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['coordinates'] == null) {
      coordinates = null;
    } else {
      coordinates = (json['coordinates'] as List).cast<double>();
    }
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
    return json == null ? new List<ResponseGeocodingGeometry>() : json.map((value) => new ResponseGeocodingGeometry.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingGeometry> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingGeometry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingGeometry.fromJson(value));
    }
    return map;
  }
}

