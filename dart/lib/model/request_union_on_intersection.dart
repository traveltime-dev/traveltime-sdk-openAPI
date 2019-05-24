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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['search_ids'] == null) {
      searchIds = null;
    } else {
      searchIds = (json['search_ids'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (searchIds != null)
      json['search_ids'] = searchIds;
    return json;
  }

  static List<RequestUnionOnIntersection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestUnionOnIntersection>() : json.map((value) => new RequestUnionOnIntersection.fromJson(value)).toList();
  }

  static Map<String, RequestUnionOnIntersection> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestUnionOnIntersection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestUnionOnIntersection.fromJson(value));
    }
    return map;
  }
}

