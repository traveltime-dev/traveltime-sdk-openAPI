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
    if (json['enabled'] == null) {
      enabled = null;
    } else {
          enabled = json['enabled'];
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
    if (width != null)
      json['width'] = width;
    return json;
  }

  static List<RequestRangeNoMaxResults> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRangeNoMaxResults>() : json.map((value) => new RequestRangeNoMaxResults.fromJson(value)).toList();
  }

  static Map<String, RequestRangeNoMaxResults> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRangeNoMaxResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRangeNoMaxResults.fromJson(value));
    }
    return map;
  }
}

