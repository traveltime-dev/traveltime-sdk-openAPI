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
    manyToOne = (json['many_to_one'] == null) ?
      null :
      RequestTimeFilterFastArrivalManyToOneSearch.listFromJson(json['many_to_one']);
    oneToMany = (json['one_to_many'] == null) ?
      null :
      RequestTimeFilterFastArrivalOneToManySearch.listFromJson(json['one_to_many']);
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
    return json == null ? List<RequestTimeFilterFastArrivalSearches>() : json.map((value) => RequestTimeFilterFastArrivalSearches.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFastArrivalSearches> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterFastArrivalSearches>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterFastArrivalSearches.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFastArrivalSearches-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFastArrivalSearches>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterFastArrivalSearches>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterFastArrivalSearches.listFromJson(value);
       });
     }
     return map;
  }
}

