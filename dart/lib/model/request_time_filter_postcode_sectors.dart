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
    departureSearches = (json['departure_searches'] == null) ?
      null :
      RequestTimeFilterPostcodeSectorsDepartureSearch.listFromJson(json['departure_searches']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeFilterPostcodeSectorsArrivalSearch.listFromJson(json['arrival_searches']);
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
    return json == null ? List<RequestTimeFilterPostcodeSectors>() : json.map((value) => RequestTimeFilterPostcodeSectors.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeSectors> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodeSectors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodeSectors.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeSectors-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeSectors>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodeSectors>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodeSectors.listFromJson(value);
       });
     }
     return map;
  }
}

