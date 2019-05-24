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
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = RequestLocation.listFromJson(json['locations']);
    }
    if (json['arrival_searches'] == null) {
      arrivalSearches = null;
    } else {
      arrivalSearches = new RequestTimeFilterFastArrivalSearches.fromJson(json['arrival_searches']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locations != null)
      json['locations'] = locations;
    if (arrivalSearches != null)
      json['arrival_searches'] = arrivalSearches;
    return json;
  }

  static List<RequestTimeFilterFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterFast>() : json.map((value) => new RequestTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterFast.fromJson(value));
    }
    return map;
  }
}

