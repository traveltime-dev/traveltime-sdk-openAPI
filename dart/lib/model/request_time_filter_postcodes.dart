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
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestTimeFilterPostcodesDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestTimeFilterPostcodesArrivalSearch.listFromJson(json['arrival_searches']);
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

  static List<RequestTimeFilterPostcodes> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodes>() : json.map((value) => new RequestTimeFilterPostcodes.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodes> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodes.fromJson(value));
    }
    return map;
  }
}

