part of openapi.api;

class RequestTimeMapDepartureSearch {
  
  String id = null;
  
  Coords coords = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime departureTime = null;
  
  List<RequestTimeMapProperty> properties = [];
  
  RequestRangeNoMaxResults range = null;
  RequestTimeMapDepartureSearch();

  @override
  String toString() {
    return 'RequestTimeMapDepartureSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestTimeMapDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    coords = new Coords.fromJson(json['coords']);
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    departureTime = json['departure_time'] == null ? null : DateTime.parse(json['departure_time']);
    properties = RequestTimeMapProperty.listFromJson(json['properties']);
    range = new RequestRangeNoMaxResults.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'coords': coords,
      'transportation': transportation,
      'travel_time': travelTime,
      'departure_time': departureTime == null ? '' : departureTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeMapDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeMapDepartureSearch>() : json.map((value) => new RequestTimeMapDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMapDepartureSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMapDepartureSearch.fromJson(value));
    }
    return map;
  }
}

