part of openapi.api;

class ResponseMapInfoFeatures {
  
  ResponseMapInfoFeaturesPublicTransport publicTransport = null;
  
  bool fares = null;
  
  bool postcodes = null;
  ResponseMapInfoFeatures();

  @override
  String toString() {
    return 'ResponseMapInfoFeatures[publicTransport=$publicTransport, fares=$fares, postcodes=$postcodes, ]';
  }

  ResponseMapInfoFeatures.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    publicTransport = new ResponseMapInfoFeaturesPublicTransport.fromJson(json['public_transport']);
    fares = json['fares'];
    postcodes = json['postcodes'];
  }

  Map<String, dynamic> toJson() {
    return {
      'public_transport': publicTransport,
      'fares': fares,
      'postcodes': postcodes
    };
  }

  static List<ResponseMapInfoFeatures> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMapInfoFeatures>() : json.map((value) => new ResponseMapInfoFeatures.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeatures> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoFeatures>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoFeatures.fromJson(value));
    }
    return map;
  }
}

