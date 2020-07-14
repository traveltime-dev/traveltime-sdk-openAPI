part of openapi.api;

class RequestTimeFilter {
  
  List<RequestLocation> locations = [];
  
  List<RequestTimeFilterDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterArrivalSearch> arrivalSearches = [];

  RequestTimeFilter({
    this.locations,
    this.departureSearches,
    this.arrivalSearches,
  });

  @override
  String toString() {
    return 'RequestTimeFilter[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = (json['locations'] == null) ?
      null :
      RequestLocation.listFromJson(json['locations']);
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestTimeFilterDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeFilterArrivalSearch.listFromJson(json['arrival_searches']);
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
    return json == null ? List<RequestTimeFilter>() : json.map((value) => RequestTimeFilter.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilter> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilter.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilter-objects as value to a dart map
  static Map<String, List<RequestTimeFilter>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilter>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilter.listFromJson(value);
       });
     }
     return map;
  }
}

