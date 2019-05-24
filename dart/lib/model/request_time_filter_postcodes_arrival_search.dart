part of openapi.api;

class RequestTimeFilterPostcodesArrivalSearch {
  
  String id = null;
  
  RequestTransportation transportation = null;
  
  int travelTime = null;
  
  DateTime arrivalTime = null;
  
  List<RequestTimeFilterPostcodesProperty> properties = [];
  
  RequestRangeFull range = null;
  RequestTimeFilterPostcodesArrivalSearch();

  @override
  String toString() {
    return 'RequestTimeFilterPostcodesArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }

  RequestTimeFilterPostcodesArrivalSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
      properties = RequestTimeFilterPostcodesProperty.listFromJson(json['properties']);
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

  static List<RequestTimeFilterPostcodesArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTimeFilterPostcodesArrivalSearch>() : json.map((value) => new RequestTimeFilterPostcodesArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeFilterPostcodesArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTimeFilterPostcodesArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTimeFilterPostcodesArrivalSearch.fromJson(value));
    }
    return map;
  }
}

