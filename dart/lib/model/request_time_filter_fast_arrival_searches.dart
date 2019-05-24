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
    if (json['many_to_one'] == null) {
      manyToOne = null;
    } else {
      manyToOne = RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(json['many_to_one']);
    }
    if (json['one_to_many'] == null) {
      oneToMany = null;
    } else {
      oneToMany = RequestTimeFilterFastArrivalOneToManySearch.listFromJson(json['one_to_many']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (manyToOne != null)
      json['many_to_one'] = manyToOne;
    if (oneToMany != null)
      json['one_to_many'] = oneToMany;
    return json;
  }

  static List<RequestTimeFilterFastArrivalSearches> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFastArrivalSearches>() : json.map((value) => new RequestTimeFilterFastArrivalSearches.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalSearches> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFastArrivalSearches>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFastArrivalSearches.fromJson(value));
    }
    return map;
  }
}

