part of openapi.api;

class RequestTimeFilterFast {
  
  List<RequestLocation> locations = [];
  
  RequestTimeFilterFastArrivalSearches arrivalSearches = null;
  RequestTimeFilterFast();

  @override
  String toString() {
    return 'RequestTimeFilterFast[locations=$locations, arrivalSearches=$arrivalSearches, ]';
  }

  RequestTimeFilterFast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    locations = RequestLocation.listFromJson(json['locations']);
    arrivalSearches = new RequestTimeFilterFastArrivalSearches.fromJson(json['arrival_searches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'locations': locations,
      'arrival_searches': arrivalSearches
    };
  }

  static List<RequestTimeFilterFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFast>() : json.map((value) => new RequestTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFast>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFast.fromJson(value));
    }
    return map;
  }
}

