part of openapi.api;

class RequestRangeFull {
  
  bool enabled = null;
  
  int maxResults = null;
  
  int width = null;
  RequestRangeFull();

  @override
  String toString() {
    return 'RequestRangeFull[enabled=$enabled, maxResults=$maxResults, width=$width, ]';
  }

  RequestRangeFull.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = json['enabled'];
    maxResults = json['max_results'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'max_results': maxResults,
      'width': width
    };
  }

  static List<RequestRangeFull> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRangeFull>() : json.map((value) => new RequestRangeFull.fromJson(value)).toList();
  }

  static Map<String, RequestRangeFull> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRangeFull>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRangeFull.fromJson(value));
    }
    return map;
  }
}

