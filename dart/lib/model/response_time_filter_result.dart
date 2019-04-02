part of openapi.api;

class ResponseTimeFilterResult {
  
  String searchId = null;
  
  List<ResponseTimeFilterLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseTimeFilterResult();

  @override
  String toString() {
    return 'ResponseTimeFilterResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseTimeFilterResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = ResponseTimeFilterLocation.listFromJson(json['locations']);
    unreachable = ((json['unreachable'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'locations': locations,
      'unreachable': unreachable
    };
  }

  static List<ResponseTimeFilterResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeFilterResult>() : json.map((value) => new ResponseTimeFilterResult.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeFilterResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeFilterResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeFilterResult.fromJson(value));
    }
    return map;
  }
}

