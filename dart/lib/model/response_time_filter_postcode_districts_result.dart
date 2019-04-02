part of openapi.api;

class ResponseTimeFilterPostcodeDistrictsResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterPostcodeDistrict> districts = [];
  ResponseTimeFilterPostcodeDistrictsResult();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrictsResult[searchId=$searchId, districts=$districts, ]';
  }

  ResponseTimeFilterPostcodeDistrictsResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    districts = ResponseTimeFilterPostcodeDistrict.listFromJson(json['districts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'districts': districts
    };
  }

  static List<ResponseTimeFilterPostcodeDistrictsResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrictsResult>() : json.map((value) => new ResponseTimeFilterPostcodeDistrictsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictsResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrictsResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrictsResult.fromJson(value));
    }
    return map;
  }
}

