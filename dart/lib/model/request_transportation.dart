part of openapi.api;

class RequestTransportation {
  
  String type = null;
  //enum typeEnum {  cycling,  driving,  driving+train,  public_transport,  walking,  coach,  bus,  train,  ferry,  driving+ferry,  cycling+ferry,  };{
  
  int ptChangeDelay = null;
  
  int walkingTime = null;
  
  int drivingTimeToStation = null;
  
  int parkingTime = null;
  
  int boardingTime = null;
  RequestTransportation();

  @override
  String toString() {
    return 'RequestTransportation[type=$type, ptChangeDelay=$ptChangeDelay, walkingTime=$walkingTime, drivingTimeToStation=$drivingTimeToStation, parkingTime=$parkingTime, boardingTime=$boardingTime, ]';
  }

  RequestTransportation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    ptChangeDelay = json['pt_change_delay'];
    walkingTime = json['walking_time'];
    drivingTimeToStation = json['driving_time_to_station'];
    parkingTime = json['parking_time'];
    boardingTime = json['boarding_time'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (ptChangeDelay != null)
      json['pt_change_delay'] = ptChangeDelay;
    if (walkingTime != null)
      json['walking_time'] = walkingTime;
    if (drivingTimeToStation != null)
      json['driving_time_to_station'] = drivingTimeToStation;
    if (parkingTime != null)
      json['parking_time'] = parkingTime;
    if (boardingTime != null)
      json['boarding_time'] = boardingTime;
    return json;
  }

  static List<RequestTransportation> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTransportation>() : json.map((value) => RequestTransportation.fromJson(value)).toList();
  }

  static Map<String, RequestTransportation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTransportation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTransportation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTransportation-objects as value to a dart map
  static Map<String, List<RequestTransportation>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTransportation>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTransportation.listFromJson(value);
       });
     }
     return map;
  }
}

