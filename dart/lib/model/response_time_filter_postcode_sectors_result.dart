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
    searchId = json['search_id'];
    sectors = ResponseTimeFilterPostcodeSector.listFromJson(json['sectors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'sectors': sectors
    };
  }

  static List<ResponseTimeFilterPostcodeSectorsResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterPostcodeSectorsResult>() : json.map((value) => new ResponseTimeFilterPostcodeSectorsResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterPostcodeSectorsResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterPostcodeSectorsResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterPostcodeSectorsResult.fromJson(value));
    }
    return map;
  }
}

