part of openapi.api;

class RequestTimeMapDepartureSearch {
  
  String id = null;
  
  Coords coords = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  List<RequestTimeMapProperty> properties = [];
  
  RequestRangeNoMaxResults range = null;

  RequestTimeMapDepartureSearch({
    this.id,
    this.coords,
    this.transportation,
    this.travelTime,
    this.departureTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestTimeMapDepartureSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeMapDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    coords = (json['coords'] == null) ?
      null :
      Coords.fromJson(json['coords']);
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = (json['departure_time'] == null) ?
      null :
      DateTime.parse(json['departure_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestTimeMapProperty.listFromJson(json['properties']);
    range = (json['range'] == null) ?
      null :
      RequestRangeNoMaxResults.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (coords != null)
      json['coords'] = coords;
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

  static List<RequestTimeMapDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeMapDepartureSearch>() : json.map((value) => RequestTimeMapDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeMapDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeMapDepartureSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMapDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestTimeMapDepartureSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeMapDepartureSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeMapDepartureSearch.listFromJson(value);
       });
     }
     return map;
  }
}

