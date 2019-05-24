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
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = RequestLocation.listFromJson(json['locations']);
    }
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestRoutesDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestRoutesArrivalSearch.listFromJson(json['arrival_searches']);
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

  static List<RequestRoutes> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutes>() : json.map((value) => new RequestRoutes.fromJson(value)).toList();
  }

  static Map<String, RequestRoutes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutes.fromJson(value));
    }
    return map;
  }
}

