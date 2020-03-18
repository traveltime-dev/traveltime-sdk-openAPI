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
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
    reachablePostcodesThreshold = (json['reachable_postcodes_threshold'] == null) ?
      null :
      json['reachable_postcodes_threshold'].toDouble();
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterPostcodeDistrictsProperty.listFromJson(json['properties']);
    range = (json['range'] == null) ?
      null :
      RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (transportation != null)
      json['transportation'] = transportation;
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (reachablePostcodesThreshold != null)
      json['reachable_postcodes_threshold'] = reachablePostcodesThreshold;
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterPostcodeDistrictsArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterPostcodeDistrictsArrivalSearch>() : json.map((value) => RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodeDistrictsArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodeDistrictsArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodeDistrictsArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodeDistrictsArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

