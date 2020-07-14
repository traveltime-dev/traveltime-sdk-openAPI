part of openapi.api;

class ResponseTimeFilterPostcodeDistrictsResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterPostcodeDistrict> districts = [];

  ResponseTimeFilterPostcodeDistrictsResult({
    this.searchId,
    this.districts,
  });

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrictsResult[searchId=$searchId, districts=$districts, ]';
  }

  ResponseTimeFilterPostcodeDistrictsResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    districts = (json['districts'] == null) ?
      null :
      ResponseTimeFilterPostcodeDistrict.listFromJson(json['districts']);
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
    return json == null ? List<ResponseTimeFilterPostcodeDistrictsResult>() : json.map((value) => ResponseTimeFilterPostcodeDistrictsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeDistrictsResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodeDistrictsResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodeDistrictsResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodeDistrictsResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodeDistrictsResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodeDistrictsResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodeDistrictsResult.listFromJson(value);
       });
     }
     return map;
  }
}

