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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['coords'] == null) {
      coords = null;
    } else {
      coords = new Coords.fromJson(json['coords']);
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
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = RequestTimeMapProperty.listFromJson(json['properties']);
    }
    if (json['range'] == null) {
      range = null;
    } else {
      range = new RequestRangeNoMaxResults.fromJson(json['range']);
    }
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
    return json == null ? new List<RequestTimeMapDepartureSearch>() : json.map((value) => new RequestTimeMapDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMapDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMapDepartureSearch.fromJson(value));
    }
    return map;
  }
}

