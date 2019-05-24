part of openapi.api;

class RequestTimeFilterArrivalSearch {
  
  String id = null;
  
  List<String> departureLocationIds = [];
  
  String arrivalLocationId = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  List<RequestTimeFilterProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterArrivalSearch.fromJson(Map<String, dynamic> json) {
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
      properties = RequestTimeFilterProperty.listFromJson(json['properties']);
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

  static List<RequestTimeFilterArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterArrivalSearch>() : json.map((value) => new RequestTimeFilterArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterArrivalSearch.fromJson(value));
    }
    return map;
  }
}

