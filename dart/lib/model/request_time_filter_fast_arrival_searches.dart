part of openapi.api;

class RequestTimeFilterFastArrivalSearches {
  
  List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = [];
  
  List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = [];
  RequestTimeFilterFastArrivalSearches();

  @override
  String toString() {
    return 'RequestTimeFilterFastArrivalSearches[manyToOne=$manyToOne, oneToMany=$oneToMany, ]';
  }

  RequestTimeFilterFastArrivalSearches.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    manyToOne = RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(json['many_to_one']);
    oneToMany = RequestTimeFilterFastArrivalOneToManySearch.listFromJson(json['one_to_many']);
  }

  Map<String, dynamic> toJson() {
    return {
      'many_to_one': manyToOne,
      'one_to_many': oneToMany
    };
  }

  static List<RequestTimeFilterFastArrivalSearches> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalSearches>() : json.map((value) => new RequestTimeFilterFastArrivalSearches.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalSearches> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalSearches>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalSearches.fromJson(value));
    }
    return map;
  }
}

