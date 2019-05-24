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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['transportation'] == null) {
      transportation = null;
    } else {
      transportation = new RequestTransportation.fromJson(json['transportation']);
    }
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['arrival_time'] == null) {
      arrivalTime = null;
    } else {
      arrivalTime = DateTime.parse(json['arrival_time']);
    }
    if (json['reachable_postcodes_threshold'] == null) {
      reachablePostcodesThreshold = null;
    } else {
          reachablePostcodesThreshold = json['reachable_postcodes_threshold'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = RequestTimeFilterPostcodeDistrictsProperty.listFromJson(json['properties']);
    }
    if (json['range'] == null) {
      range = null;
    } else {
      range = new RequestRangeFull.fromJson(json['range']);
    }
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
    return json == null ? new List<RequestTimeFilterPostcodeDistrictsArrivalSearch>() : json.map((value) => new RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistrictsArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistrictsArrivalSearch.fromJson(value));
    }
    return map;
  }
}

