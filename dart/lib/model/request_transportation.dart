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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['pt_change_delay'] == null) {
      ptChangeDelay = null;
    } else {
          ptChangeDelay = json['pt_change_delay'];
    }
    if (json['walking_time'] == null) {
      walkingTime = null;
    } else {
          walkingTime = json['walking_time'];
    }
    if (json['driving_time_to_station'] == null) {
      drivingTimeToStation = null;
    } else {
          drivingTimeToStation = json['driving_time_to_station'];
    }
    if (json['parking_time'] == null) {
      parkingTime = null;
    } else {
          parkingTime = json['parking_time'];
    }
    if (json['boarding_time'] == null) {
      boardingTime = null;
    } else {
          boardingTime = json['boarding_time'];
    }
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
    return json == null ? new List<RequestTransportation>() : json.map((value) => new RequestTransportation.fromJson(value)).toList();
  }

  static Map<String, RequestTransportation> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTransportation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTransportation.fromJson(value));
    }
    return map;
  }
}

