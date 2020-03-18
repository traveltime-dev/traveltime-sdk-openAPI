part of openapi.api;

class ResponseTimeFilterPostcodesResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterPostcode> postcodes = [];
  ResponseTimeFilterPostcodesResult();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodesResult[searchId=$searchId, postcodes=$postcodes, ]';
  }

  ResponseTimeFilterPostcodesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    postcodes = (json['postcodes'] == null) ?
      null :
      ResponseTimeFilterPostcode.listFromJson(json['postcodes']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (postcodes != null)
      json['postcodes'] = postcodes;
    return json;
  }

  static List<ResponseTimeFilterPostcodesResult> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeFilterPostcodesResult>() : json.map((value) => ResponseTimeFilterPostcodesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodesResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeFilterPostcodesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeFilterPostcodesResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeFilterPostcodesResult-objects as value to a dart map
  static Map<String, List<ResponseTimeFilterPostcodesResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeFilterPostcodesResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeFilterPostcodesResult.listFromJson(value);
       });
     }
     return map;
  }
}

