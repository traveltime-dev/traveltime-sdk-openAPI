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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['departure_location_ids'] == null) {
      departureLocationIds = null;
    } else {
      departureLocationIds = (json['departure_location_ids'] as List).cast<String>();
    }
    if (json['arrival_location_id'] == null) {
      arrivalLocationId = null;
    } else {
          arrivalLocationId = json['arrival_location_id'];
    }
    if (json['transportation'] == null) {
      transportation = null;
    } else {
      transportation = new RequestTransportation.fromJson(json['transportation']);
    }
    if (json['arrival_time'] == null) {
      arrivalTime = null;
    } else {
      arrivalTime = DateTime.parse(json['arrival_time']);
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = RequestRoutesProperty.listFromJson(json['properties']);
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
    if (departureLocationIds != null)
      json['departure_location_ids'] = departureLocationIds;
    if (arrivalLocationId != null)
      json['arrival_location_id'] = arrivalLocationId;
    if (transportation != null)
      json['transportation'] = transportation;
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestRoutesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutesArrivalSearch>() : json.map((value) => new RequestRoutesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutesArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutesArrivalSearch.fromJson(value));
    }
    return map;
  }
}

