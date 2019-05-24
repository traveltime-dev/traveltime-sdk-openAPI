part of openapi.api;

class RequestRoutesDepartureSearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportation transportation = null;
  
  DateTime departureTime = null;
  
  List<RequestRoutesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestRoutesDepartureSearch();

  @override
  String toString() {
    return 'RequestRoutesDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestRoutesDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['departure_location_id'] == null) {
      departureLocationId = null;
    } else {
          departureLocationId = json['departure_location_id'];
    }
    if (json['arrival_location_ids'] == null) {
      arrivalLocationIds = null;
    } else {
      arrivalLocationIds = (json['arrival_location_ids'] as List).cast<String>();
    }
    if (json['transportation'] == null) {
      transportation = null;
    } else {
      transportation = new RequestTransportation.fromJson(json['transportation']);
    }
    if (json['departure_time'] == null) {
      departureTime = null;
    } else {
      departureTime = DateTime.parse(json['departure_time']);
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
    if (departureLocationId != null)
      json['departure_location_id'] = departureLocationId;
    if (arrivalLocationIds != null)
      json['arrival_location_ids'] = arrivalLocationIds;
    if (transportation != null)
      json['transportation'] = transportation;
    if (departureTime != null)
      json['departure_time'] = departureTime == null ? null : departureTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestRoutesDepartureSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRoutesDepartureSearch>() : json.map((value) => new RequestRoutesDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestRoutesDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestRoutesDepartureSearch.fromJson(value));
    }
    return map;
  }
}

