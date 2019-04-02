part of openapi.api;

class RequestTimeFilterPostcodesDepartureSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  List<RequestTimeFilterPostcodesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodesDepartureSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodesDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    properties = RequestTimeFilterPostcodesProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transportation': transportation,
      'travel_time': travelTime,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeFilterPostcodesDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodesDepartureSearch>() : json.map((value) => new RequestTimeFilterPostcodesDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodesDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodesDepartureSearch.fromJson(value));
    }
    return map;
  }
}

