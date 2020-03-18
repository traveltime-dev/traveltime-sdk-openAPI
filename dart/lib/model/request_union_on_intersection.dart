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
    searchIds = (json['search_ids'] == null) ?
      null :
      (json['search_ids'] as List).cast<String>();
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
    return json == null ? List<RequestUnionOnIntersection>() : json.map((value) => RequestUnionOnIntersection.fromJson(value)).toList();
  }

  static Map<String, RequestUnionOnIntersection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestUnionOnIntersection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestUnionOnIntersection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestUnionOnIntersection-objects as value to a dart map
  static Map<String, List<RequestUnionOnIntersection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestUnionOnIntersection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestUnionOnIntersection.listFromJson(value);
       });
     }
     return map;
  }
}

