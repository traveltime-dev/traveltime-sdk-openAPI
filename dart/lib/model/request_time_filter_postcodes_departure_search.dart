part of openapi.api;

class RequestTimeFilterPostcodesDepartureSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  List<RequestTimeFilterPostcodesProperty> properties = [];
  
  RequestRangeFull range = null;

  RequestTimeFilterPostcodesDepartureSearch({
    this.id,
    this.transportation,
    this.travelTime,
    this.departureTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodesDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = (json['departure_time'] == null) ?
      null :
      DateTime.parse(json['departure_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestTimeFilterPostcodesProperty.listFromJson(json['properties']);
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
    if (departureTime != null)
      json['departure_time'] = departureTime == null ? null : departureTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeFilterPostcodesDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeFilterPostcodesDepartureSearch>() : json.map((value) => RequestTimeFilterPostcodesDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeFilterPostcodesDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeFilterPostcodesDepartureSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeFilterPostcodesDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeFilterPostcodesDepartureSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeFilterPostcodesDepartureSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeFilterPostcodesDepartureSearch.listFromJson(value);
       });
     }
     return map;
  }
}

