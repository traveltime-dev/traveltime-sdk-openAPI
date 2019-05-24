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
    if (json['results'] == null) {
      results = null;
    } else {
      results = ResponseTimeFilterPostcodeDistrictsResult.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<ResponseTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistricts>() : json.map((value) => new ResponseTimeFilterPostcodeDistricts.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistricts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistricts.fromJson(value));
    }
    return map;
  }
}

