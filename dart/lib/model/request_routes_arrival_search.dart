part of openapi.api;

class RequestRoutesArrivalSearch {
  
  String id = null;
  
  List<String> departureLocationIds = [];
  
  String arrivalLocationId = null;
  
  RequestTransportation transportation = null;
  
  DateTime arrivalTime = null;
  
  List<RequestRoutesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestRoutesArrivalSearch();

  @override
  String toString() {
    return 'RequestRoutesArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestRoutesArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationIds = ((json['departure_location_ids'] ?? []) as List).map((item) => item as String).toList();
    arrivalLocationId = json['arrival_location_id'];
    transportation = new RequestTransportation.fromJson(json['transportation']);
    arrivalTime = json['arrival_time'] == null ? null : DateTime.parse(json['arrival_time']);
    properties = RequestRoutesProperty.listFromJson(json['properties']);
    range = new RequestRangeFull.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'departure_location_ids': departureLocationIds,
      'arrival_location_id': arrivalLocationId,
      'transportation': transportation,
      'arrival_time': arrivalTime == null ? '' : arrivalTime.toUtc().toIso8601String(),
      'properties': properties,
      'range': range
    };
  }

  static List<RequestRoutesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutesArrivalSearch>() : json.map((value) => new RequestRoutesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutesArrivalSearch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutesArrivalSearch.fromJson(value));
    }
    return map;
  }
}

