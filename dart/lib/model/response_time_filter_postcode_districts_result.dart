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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['districts'] == null) {
      districts = null;
    } else {
      districts = ResponseTimeFilterPostcodeDistrict.listFromJson(json['districts']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (districts != null)
      json['districts'] = districts;
    return json;
  }

  static List<ResponseTimeFilterPostcodeDistrictsResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeDistrictsResult>() : json.map((value) => new ResponseTimeFilterPostcodeDistrictsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictsResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeDistrictsResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeDistrictsResult.fromJson(value));
    }
    return map;
  }
}

