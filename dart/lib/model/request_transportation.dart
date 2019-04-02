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
    return {
      'type': type,
      'pt_change_delay': ptChangeDelay,
      'walking_time': walkingTime,
      'driving_time_to_station': drivingTimeToStation,
      'parking_time': parkingTime,
      'boarding_time': boardingTime
    };
  }

  static List<RequestTransportation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTransportation>() : json.map((value) => new RequestTransportation.fromJson(value)).toList();
  }

  static Map<String, RequestTransportation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTransportation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTransportation.fromJson(value));
    }
    return map;
  }
}

