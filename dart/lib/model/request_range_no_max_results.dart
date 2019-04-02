part of openapi.api;

class RequestRangeNoMaxResults {
  
  bool enabled = null;
  
  int width = null;
  RequestRangeNoMaxResults();

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
    return {
      'enabled': enabled,
      'width': width
    };
  }

  static List<RequestRangeNoMaxResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRangeNoMaxResults>() : json.map((value) => new RequestRangeNoMaxResults.fromJson(value)).toList();
  }

  static Map<String, RequestRangeNoMaxResults> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRangeNoMaxResults>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRangeNoMaxResults.fromJson(value));
    }
    return map;
  }
}

