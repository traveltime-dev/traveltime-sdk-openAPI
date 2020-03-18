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
    locations = (json['locations'] == null) ?
      null :
      RequestLocation.listFromJson(json['locations']);
    arrivalSearches = (json['arrival_searches'] == null) ?
      null :
      RequestTimeFilterFastArrivalSearches.fromJson(json['arrival_searches']);
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
    return json == null ? List<RequestTimeFilterFast>() : json.map((value) => RequestTimeFilterFast.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterFast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterFast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterFast-objects as value to a dart map
  static Map<String, List<RequestTimeFilterFast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterFast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterFast.listFromJson(value);
       });
     }
     return map;
  }
}

