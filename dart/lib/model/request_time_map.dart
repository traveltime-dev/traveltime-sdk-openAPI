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
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestTimeMapDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestTimeMapArrivalSearch.listFromJson(json['arrival_searches']);
    }
    if (json['unions'] == null) {
      unions = null;
    } else {
      unions = RequestUnionOnIntersection.listFromJson(json['unions']);
    }
    if (json['intersections'] == null) {
      intersections = null;
    } else {
      intersections = RequestUnionOnIntersection.listFromJson(json['intersections']);
    }
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
    return json == null ? new List<RequestTimeMap>() : json.map((value) => new RequestTimeMap.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMap> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMap>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMap.fromJson(value));
    }
    return map;
  }
}

