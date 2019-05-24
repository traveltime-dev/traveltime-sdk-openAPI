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
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = RequestLocation.listFromJson(json['locations']);
    }
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestTimeFilterDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestTimeFilterArrivalSearch.listFromJson(json['arrival_searches']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locations != null)
      json['locations'] = locations;
    if (departureSearches != null)
      json['departure_searches'] = departureSearches;
    if (arrivalSearches != null)
      json['arrival_searches'] = arrivalSearches;
    return json;
  }

  static List<RequestTimeFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilter>() : json.map((value) => new RequestTimeFilter.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilter> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilter.fromJson(value));
    }
    return map;
  }
}

