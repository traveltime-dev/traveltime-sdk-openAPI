part of openapi.api;

class RequestUnionOnIntersection {
  
  String id = null;
  
  List<String> searchIds = [];
  RequestUnionOnIntersection();

  @override
  String toString() {
    return 'RequestUnionOnIntersection[id=$id, searchIds=$searchIds, ]';
  }

  RequestUnionOnIntersection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    searchIds = ((json['search_ids'] ?? []) as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'search_ids': searchIds
    };
  }

  static List<RequestUnionOnIntersection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestUnionOnIntersection>() : json.map((value) => new RequestUnionOnIntersection.fromJson(value)).toList();
  }

  static Map<String, RequestUnionOnIntersection> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestUnionOnIntersection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestUnionOnIntersection.fromJson(value));
    }
    return map;
  }
}

