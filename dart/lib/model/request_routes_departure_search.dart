part of openapi.api;

class RequestRoutesDepartureSearch {
  
  String id = null;
  
  String departureLocationId = null;
  
  List<String> arrivalLocationIds = [];
  
  RequestTransportation transportation = null;
  
  DateTime departureTime = null;
  
  List<RequestRoutesProperty> properties = [];
  
  RequestRangeFull range = null;

  RequestRoutesDepartureSearch({
    this.id,
    this.departureLocationId,
    this.arrivalLocationIds,
    this.transportation,
    this.departureTime,
    this.properties,
    this.range,
  });

  @override
  String toString() {
    return 'RequestRoutesDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }

  RequestRoutesDepartureSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    departureLocationId = json['departure_location_id'];
    arrivalLocationIds = (json['arrival_location_ids'] == null) ?
      null :
      (json['arrival_location_ids'] as List).cast<String>();
    transportation = (json['transportation'] == null) ?
      null :
      RequestTransportation.fromJson(json['transportation']);
    departureTime = (json['departure_time'] == null) ?
      null :
      DateTime.parse(json['departure_time']);
    properties = (json['properties'] == null) ?
      null :
      RequestRoutesProperty.listFromJson(json['properties']);
    range = (json['range'] == null) ?
      null :
      RequestRangeFull.fromJson(json['range']);
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
    return json == null ? List<RequestRoutesDepartureSearch>() : json.map((value) => RequestRoutesDepartureSearch.fromJson(value)).toList();
  }

  static Map<String, RequestRoutesDepartureSearch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestRoutesDepartureSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestRoutesDepartureSearch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestRoutesDepartureSearch-objects as value to a dart map
  static Map<String, List<RequestRoutesDepartureSearch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestRoutesDepartureSearch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestRoutesDepartureSearch.listFromJson(value);
       });
     }
     return map;
  }
}

