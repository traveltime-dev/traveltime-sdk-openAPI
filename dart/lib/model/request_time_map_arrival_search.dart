part of openapi.api;

class RequestTimeMapArrivalSearch {
  
  String id = null;
  
  Coords coords = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  List<RequestTimeMapProperty> properties = [];
  
  RequestRangeNoMaxResults range = null;
  RequestTimeMapArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeMapArrivalSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeMapArrivalSearch.fromJson(Map<String, dynamic> json) {
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
    if (json['arrival_time'] == null) {
      arrivalTime = null;
    } else {
      arrivalTime = DateTime.parse(json['arrival_time']);
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
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeMapArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeMapArrivalSearch>() : json.map((value) => new RequestTimeMapArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMapArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMapArrivalSearch.fromJson(value));
    }
    return map;
  }
}

