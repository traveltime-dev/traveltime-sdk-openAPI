part of openapi.api;

class RequestRoutes {
  
  List<RequestLocation> locations = [];
  
  List<RequestRoutesDepartureSearch> departureSearches = [];
  
  List<RequestRoutesArrivalSearch> arrivalSearches = [];

  RequestRoutes({
    this.locations,
    this.departureSearches,
    this.arrivalSearches,
  });

  @override
  String toString() {
    return 'RequestRoutes[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestRoutes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = (json['locations'] == null) ?
      null :
      RequestLocation.listFromJson(json['locations']);
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestRoutesDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestRoutesArrivalSearch.listFromJson(json['arrival_searches']);
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

  static List<RequestRoutes> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestRoutes>() : json.map((value) => RequestRoutes.fromJson(value)).toList();
  }

  static Map<String, RequestRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestRoutes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestRoutes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestRoutes-objects as value to a dart map
  static Map<String, List<RequestRoutes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestRoutes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestRoutes.listFromJson(value);
       });
     }
     return map;
  }
}

