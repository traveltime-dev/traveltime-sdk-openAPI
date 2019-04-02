part of openapi.api;

class RequestTimeFilterPostcodeDistricts {
  
  List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = [];
  RequestTimeFilterPostcodeDistricts();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistricts[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilterPostcodeDistricts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = RequestTimeFilterPostcodeDistrictsDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = RequestTimeFilterPostcodeDistrictsArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'departure_searches': departureSearches,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeDistricts>() : json.map((value) => new RequestTimeFilterPostcodeDistricts.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistricts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistricts.fromJson(value));
    }
    return map;
  }
}

