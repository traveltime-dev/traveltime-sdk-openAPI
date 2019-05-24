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
    if (json['public_transport'] == null) {
      publicTransport = null;
    } else {
      publicTransport = new ResponseMapInfoFeaturesPublicTransport.fromJson(json['public_transport']);
    }
    if (json['fares'] == null) {
      fares = null;
    } else {
          fares = json['fares'];
    }
    if (json['postcodes'] == null) {
      postcodes = null;
    } else {
          postcodes = json['postcodes'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (publicTransport != null)
      json['public_transport'] = publicTransport;
    if (fares != null)
      json['fares'] = fares;
    if (postcodes != null)
      json['postcodes'] = postcodes;
    return json;
  }

  static List<ResponseMapInfoFeatures> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMapInfoFeatures>() : json.map((value) => new ResponseMapInfoFeatures.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeatures> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoFeatures>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoFeatures.fromJson(value));
    }
    return map;
  }
}

