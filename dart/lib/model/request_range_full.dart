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
    return json == null ? List<RequestRangeFull>() : json.map((value) => RequestRangeFull.fromJson(value)).toList();
  }

  static Map<String, RequestRangeFull> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestRangeFull>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestRangeFull.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestRangeFull-objects as value to a dart map
  static Map<String, List<RequestRangeFull>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestRangeFull>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestRangeFull.listFromJson(value);
       });
     }
     return map;
  }
}

