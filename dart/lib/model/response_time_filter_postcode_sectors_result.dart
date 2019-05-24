part of openapi.api;

class ResponseTimeFilterPostcodeSectorsResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterPostcodeSector> sectors = [];
  ResponseTimeFilterPostcodeSectorsResult();

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectorsResult[searchId=$searchId, sectors=$sectors, ]';
  }

  ResponseTimeFilterPostcodeSectorsResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['search_id'] == null) {
      searchId = null;
    } else {
          searchId = json['search_id'];
    }
    if (json['sectors'] == null) {
      sectors = null;
    } else {
      sectors = ResponseTimeFilterPostcodeSector.listFromJson(json['sectors']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchId != null)
      json['search_id'] = searchId;
    if (sectors != null)
      json['sectors'] = sectors;
    return json;
  }

  static List<ResponseTimeFilterPostcodeSectorsResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSectorsResult>() : json.map((value) => new ResponseTimeFilterPostcodeSectorsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorsResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSectorsResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSectorsResult.fromJson(value));
    }
    return map;
  }
}

