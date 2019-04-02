part of openapi.api;

class RequestTimeMap {
  
  List<RequestTimeMapDepartureSearch> departureSearches = [];
  
  List<RequestTimeMapArrivalSearch> arrivalSearches = [];
  
  List<RequestUnionOnIntersection> unions = [];
  
  List<RequestUnionOnIntersection> intersections = [];
  RequestTimeMap();

  @override
  String toString() {
    return 'RequestTimeMap[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, unions=$unions, intersections=$intersections, ]';
  }

  RequestTimeMap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = RequestTimeMapDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestTimeMapArrivalSearch.listFromJson(json['arrival_searches']);
    unions = RequestUnionOnIntersection.listFromJson(json['unions']);
    intersections = RequestUnionOnIntersection.listFromJson(json['intersections']);
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches,
      'unions': unions,
      'intersections': intersections
    };
  }

  static List<RequestTimeMap> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeMap>() : json.map((value) => new RequestTimeMap.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMap> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMap.fromJson(value));
    }
    return map;
  }
}

