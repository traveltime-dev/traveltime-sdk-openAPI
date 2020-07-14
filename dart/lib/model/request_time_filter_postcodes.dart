part of openapi.api;

class RequestTimeFilterPostcodes {
  
  List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = [];
  
  List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = [];

  RequestTimeFilterPostcodes({
    this.departureSearches,
    this.arrivalSearches,
  });

  @override
  String toString() {
    return 'RequestTimeFilterPostcodes[departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilterPostcodes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestTimeFilterPostcodesDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeFilterPostcodesArrivalSearch.listFromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (departureSearches != null)
      json['departure_searches'] = departureSearches;
    if (arrivalSearches != null)
      json['arrival_searches'] = arrivalSearches;
    return json;
  }

  static List<RequestTimeFilterPostcodes> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterPostcodes>() : json.map((value) => RequestTimeFilterPostcodes.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodes-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodes.listFromJson(value);
       });
     }
     return map;
  }
}

