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
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['postcodes'] == null) {
      postcodes = null;
    } else {
      postcodes = ResponseTimeFilterPostcode.listFromJson(json['postcodes']);
    }
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
    return json == null ? new List<ResponseTimeFilterPostcodesResult>() : json.map((value) => new ResponseTimeFilterPostcodesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodesResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodesResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodesResult.fromJson(value));
    }
    return map;
  }
}

