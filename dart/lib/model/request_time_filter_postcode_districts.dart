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
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestTimeFilterPostcodeDistrictsDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestTimeFilterPostcodeDistrictsArrivalSearch.listFromJson(json['arrival_searches']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (departureSearches != null)
      json['departure_searches'] = departureSearches;
    if (arrivalSearches != null)
      json['arrival_searches'] = arrivalSearches;
    return json;
  }

  static List<RequestTimeFilterPostcodeDistricts> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeDistricts>() : json.map((value) => new RequestTimeFilterPostcodeDistricts.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistricts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistricts.fromJson(value));
    }
    return map;
  }
}

