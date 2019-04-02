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
    id = json['id'];
    coords = new Coords.fromJson(json['coords']);
    transportation = new RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    properties = RequestTimeMapProperty.listFromJson(json['properties']);
    range = new RequestRangeNoMaxResults.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'coords': coords,
      'transportation': transportation,
      'travel_time': travelTime,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestTimeMapArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeMapArrivalSearch>() : json.map((value) => new RequestTimeMapArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeMapArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeMapArrivalSearch.fromJson(value));
    }
    return map;
  }
}

