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
    if (json['departure_time'] == null) {
      departureTime = null;
    } else {
      departureTime = DateTime.parse(json['departure_time']);
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
    if (departureTime != null)
      json['departure_time'] = departureTime == null ? null : departureTime.toUtc().toIso8601String();
    if (reachablePostcodesThreshold != null)
      json['reachable_postcodes_threshold'] = reachablePostcodesThreshold;
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterPostcodeDistrictsDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodeDistrictsDepartureSearch>() : json.map((value) => new RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodeDistrictsDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodeDistrictsDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodeDistrictsDepartureSearch.fromJson(value));
    }
    return map;
  }
}

