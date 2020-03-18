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
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestTimeFilterPostcodeDistrictsDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeFilterPostcodeDistrictsArrivalSearch.listFromJson(json['arrival_searches']);
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
    return json == null ? List<RequestTimeFilterPostcodeDistricts>() : json.map((value) => RequestTimeFilterPostcodeDistricts.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistricts> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodeDistricts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodeDistricts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeDistricts-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeDistricts>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodeDistricts>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodeDistricts.listFromJson(value);
       });
     }
     return map;
  }
}

