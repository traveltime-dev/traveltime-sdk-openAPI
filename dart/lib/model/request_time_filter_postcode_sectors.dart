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
    if (json['departure_searches'] == null) {
      departureSearches = null;
    } else {
      departureSearches = RequestTimeFilterPostcodeSectorsDepartureSearch.listFromJson(json['departure_searches']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(json['arrival_searches']);
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

  static List<RequestTimeFilterPostcodeSectors> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeSectors>() : json.map((value) => new RequestTimeFilterPostcodeSectors.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeSectors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeSectors.fromJson(value));
    }
    return map;
  }
}

