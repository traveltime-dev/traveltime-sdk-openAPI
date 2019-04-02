part of openapi.api;

class RequestRoutes {
  
  List<RequestLocation> locations = [];
  
  List<RequestRoutesDepartureSearch> departureSearches = [];
  
  List<RequestRoutesArrivalSearch> arrivalSearches = [];
  RequestRoutes();

  @override
  String toString() {
    return 'RequestRoutes[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestRoutes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = RequestLocation.listFromJson(json['locations']);
    departureSearches = RequestRoutesDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestRoutesArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'locations': locations,
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestRoutes> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutes>() : json.map((value) => new RequestRoutes.fromJson(value)).toList();
  }

  static Map<String, RequestRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutes.fromJson(value));
    }
    return map;
  }
}

