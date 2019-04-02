part of openapi.api;

class ResponseTimeFilterFastResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterFastLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseTimeFilterFastResult();

  @override
  String toString() {
    return 'ResponseTimeFilterFastResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseTimeFilterFastResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = ResponseTimeFilterFastLocation.listFromJson(json['locations']);
    unreachable = ((json['unreachable'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'locations': locations,
      'unreachable': unreachable
    };
  }

  static List<ResponseTimeFilterFastResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterFastResult>() : json.map((value) => new ResponseTimeFilterFastResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterFastResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterFastResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterFastResult.fromJson(value));
    }
    return map;
  }
}

