part of openapi.api;

class RequestTimeFilterPostcodes {
  
  List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = [];
  RequestTimeFilterPostcodes();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodes[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilterPostcodes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = RequestTimeFilterPostcodesDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestTimeFilterPostcodesArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestTimeFilterPostcodes> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodes>() : json.map((value) => new RequestTimeFilterPostcodes.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodes.fromJson(value));
    }
    return map;
  }
}

