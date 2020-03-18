part of openapi.api;

class ResponseTimeFilterPostcodeDistricts {
  
  List<ResponseTimeFilterPostcodeDistrictsResult> results = [];
  ResponseTimeFilterPostcodeDistricts();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistricts[results=$results, ]';
  }

  ResponseTimeFilterPostcodeDistricts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      ResponseTimeFilterPostcodeDistrictsResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodeDistricts>() : json.map((value) => ResponseTimeFilterPostcodeDistricts.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeDistricts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeDistricts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistricts-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistricts>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeDistricts>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeDistricts.listFromJson(value);
       });
     }
     return map;
  }
}

