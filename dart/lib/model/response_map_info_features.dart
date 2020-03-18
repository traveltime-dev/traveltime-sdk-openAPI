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
    publicTransport = (json['public_transport'] == null) ?
      null :
      ResponseMapInfoFeaturesPublicTransport.fromJson(json['public_transport']);
    fares = json['fares'];
    postcodes = json['postcodes'];
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
    return json == null ? List<ResponseMapInfoFeatures>() : json.map((value) => ResponseMapInfoFeatures.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeatures> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseMapInfoFeatures>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseMapInfoFeatures.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoFeatures-objects as value to a dart map
  static Map<String, List<ResponseMapInfoFeatures>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseMapInfoFeatures>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseMapInfoFeatures.listFromJson(value);
       });
     }
     return map;
  }
}

