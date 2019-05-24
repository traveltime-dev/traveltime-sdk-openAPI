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
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
    }
    if (json['max_results'] == null) {
      maxResults = null;
    } else {
          maxResults = json['max_results'];
    }
    if (json['width'] == null) {
      width = null;
    } else {
          width = json['width'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    if (maxResults != null)
      json['max_results'] = maxResults;
    if (width != null)
      json['width'] = width;
    return json;
  }

  static List<RequestRangeFull> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRangeFull>() : json.map((value) => new RequestRangeFull.fromJson(value)).toList();
  }

  static Map<String, RequestRangeFull> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRangeFull>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRangeFull.fromJson(value));
    }
    return map;
  }
}

