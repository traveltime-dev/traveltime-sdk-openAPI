part of openapi.api;

class ResponseRoutesResult {
  
  String searchId = null;
  
  List<ResponseRoutesLocation> locations = [];
  
  List<String> unreachable = [];
  ResponseRoutesResult();

  @override
  String toString() {
    return 'ResponseRoutesResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }

  ResponseRoutesResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchId = json['search_id'];
    locations = ResponseRoutesLocation.listFromJson(json['locations']);
    unreachable = ((json['unreachable'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'search_id': searchId,
      'locations': locations,
      'unreachable': unreachable
    };
  }

  static List<ResponseRoutesResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutesResult>() : json.map((value) => new ResponseRoutesResult.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutesResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutesResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutesResult.fromJson(value));
    }
    return map;
  }
}

