part of openapi.api;

class RequestTimeFilterPostcodeDistrictsArrivalSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  double reachablePostcodesThreshold = null;
  
  List<RequestTimeFilterPostcodeDistrictsProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodeDistrictsArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistrictsArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    reachablePostcodesThreshold = json['reachable_postcodes_threshold'];
    properties = RequestTimeFilterPostcodeDistrictsProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'reachable_postcodes_threshold': reachablePostcodesThreshold,
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodeDistrictsArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeDistrictsArrivalSearch>() : json.map((value) => new RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value));
    }
    return map;
  }
}

