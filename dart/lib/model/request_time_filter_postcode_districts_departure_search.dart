part of openapi.api;

class RequestTimeFilterPostcodeDistrictsDepartureSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  double reachablePostcodesThreshold = null;
  
  List<RequestTimeFilterPostcodeDistrictsProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodeDistrictsDepartureSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistrictsDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    reachablePostcodesThreshold = json['reachable_postcodes_threshold'];
    properties = RequestTimeFilterPostcodeDistrictsProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'reachable_postcodes_threshold': reachablePostcodesThreshold,
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodeDistrictsDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeDistrictsDepartureSearch>() : json.map((value) => new RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistrictsDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistrictsDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value));
    }
    return map;
  }
}

