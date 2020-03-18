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
    coords = (json['coords'] == null) ?
      null :
      Coords.fromJson(json['coords']);
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    travelTime = json['travel_time'];
    arrivalTime = (json['arrival_time'] == null) ?
      null :
      DateTime.parse(json['arrival_time']);
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
    if (arrivalTime != null)
      json['arrival_time'] = arrivalTime == null ? null : arrivalTime.toUtc().toIso8601String();
    if (properties != null)
      json['properties'] = properties;
    if (range != null)
      json['range'] = range;
    return json;
  }

  static List<RequestTimeMapArrivalSearch> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTimeMapArrivalSearch>() : json.map((value) => RequestTimeMapArrivalSearch.fromJson(value)).toList();
  }

  static Map<String, RequestTimeMapArrivalSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTimeMapArrivalSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTimeMapArrivalSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTimeMapArrivalSearch-objects as value to a dart map
  static Map<String, List<RequestTimeMapArrivalSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTimeMapArrivalSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTimeMapArrivalSearch.listFromJson(value);
       });
     }
     return map;
  }
}

