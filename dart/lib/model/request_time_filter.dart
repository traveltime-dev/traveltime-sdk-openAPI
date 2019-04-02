part of openapi.api;

class RequestTimeFilter {
  
  List<RequestLocation> locations = [];
  
  List<RequestTimeFilterDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterArrivalSearch> arrivalSearches = [];
  RequestTimeFilter();

  @override
  String toString() {
    return 'RequestTimeFilter[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = RequestLocation.listFromJson(json['locations']);
    departureSearches = RequestTimeFilterDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestTimeFilterArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'locations': locations,
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestTimeFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilter>() : json.map((value) => new RequestTimeFilter.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilter> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilter.fromJson(value));
    }
    return map;
  }
}

