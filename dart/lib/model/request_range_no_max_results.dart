part of openapi.api;

class RequestRangeNoMaxResults {
  
  bool enabled = null;
  
  int width = null;

  RequestRangeNoMaxResults({
    this.enabled,
    this.width,
  });

  @override
  String toString() {
    return 'RequestRangeNoMaxResults[enabled=$enabled, width=$width, ]';
  }

  RequestRangeNoMaxResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = json['enabled'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (enabled != null)
      json['enabled'] = enabled;
    if (width != null)
      json['width'] = width;
    return json;
  }

  static List<RequestRangeNoMaxResults> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestRangeNoMaxResults>() : json.map((value) => RequestRangeNoMaxResults.fromJson(value)).toList();
  }

  static Map<String, RequestRangeNoMaxResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestRangeNoMaxResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestRangeNoMaxResults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestRangeNoMaxResults-objects as value to a dart map
  static Map<String, List<RequestRangeNoMaxResults>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestRangeNoMaxResults>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestRangeNoMaxResults.listFromJson(value);
       });
     }
     return map;
  }
}

