part of openapi.api;

class RequestTimeMap {
  
  List<RequestTimeMapDepartureSearch> departureSearches = [];
  
  List<RequestTimeMapArrivalSearch> arrivalSearches = [];
  
  List<RequestUnionOnIntersection> unions = [];
  
  List<RequestUnionOnIntersection> intersections = [];

  RequestTimeMap({
    this.departureSearches,
    this.arrivalSearches,
    this.unions,
    this.intersections,
  });

  @override
  String toString() {
    return 'RequestTimeMap[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, unions=$unions, intersections=$intersections, ]';
  }

  RequestTimeMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestTimeMapDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeMapArrivalSearch.listFromJson(json['arrival_searches']);
    unions = (json['unions'] == null) ?
      null :
      RequestUnionOnIntersection.listFromJson(json['unions']);
    intersections = (json['intersections'] == null) ?
      null :
      RequestUnionOnIntersection.listFromJson(json['intersections']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (departureSearches != null)
      json['departure_searches'] = departureSearches;
    if (arrivalSearches != null)
      json['arrival_searches'] = arrivalSearches;
    if (unions != null)
      json['unions'] = unions;
    if (intersections != null)
      json['intersections'] = intersections;
    return json;
  }

  static List<RequestTimeMap> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeMap>() : json.map((value) => RequestTimeMap.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMap> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeMap.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMap-objects as value to a dart map
  static Map<String, List<RequestTimeMap>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeMap>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeMap.listFromJson(value);
       });
     }
     return map;
  }
}

