part of openapi.api;

class RequestTimeFilterPostcodeSectors {
  
  List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = [];
  RequestTimeFilterPostcodeSectors();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeSectors[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilterPostcodeSectors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = RequestTimeFilterPostcodeSectorsDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestTimeFilterPostcodeSectors> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeSectors>() : json.map((value) => new RequestTimeFilterPostcodeSectors.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeSectors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeSectors.fromJson(value));
    }
    return map;
  }
}

