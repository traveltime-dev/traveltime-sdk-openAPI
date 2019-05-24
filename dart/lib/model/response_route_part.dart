part of openapi.api;

class ResponseRoutePart {
  
  String id = null;
  
  String type = null;
  //enum typeEnum {  basic,  start_end,  road,  public_transport,  };{
  
  ResponseTransportationMode mode = null;
  //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };{
  
  String directions = null;
  
  int distance = null;
  
  int travelTime = null;
  
  List<Coords> coords = [];
  
  String direction = null;
  
  String road = null;
  
  String turn = null;
  
  String line = null;
  
  String departureStation = null;
  
  String arrivalStation = null;
  
  String departsAt = null;
  
  String arrivesAt = null;
  
  int numStops = null;
  ResponseRoutePart();

  @override
  String toString() {
    return 'ResponseRoutePart[id=$id, type=$type, mode=$mode, directions=$directions, distance=$distance, travelTime=$travelTime, coords=$coords, direction=$direction, road=$road, turn=$turn, line=$line, departureStation=$departureStation, arrivalStation=$arrivalStation, departsAt=$departsAt, arrivesAt=$arrivesAt, numStops=$numStops, ]';
  }

  ResponseRoutePart.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['mode'] == null) {
      mode = null;
    } else {
      mode = new ResponseTransportationMode.fromJson(json['mode']);
    }
    if (json['directions'] == null) {
      directions = null;
    } else {
          directions = json['directions'];
    }
    if (json['distance'] == null) {
      distance = null;
    } else {
          distance = json['distance'];
    }
    if (json['travel_time'] == null) {
      travelTime = null;
    } else {
          travelTime = json['travel_time'];
    }
    if (json['coords'] == null) {
      coords = null;
    } else {
      coords = Coords.listFromJson(json['coords']);
    }
    if (json['direction'] == null) {
      direction = null;
    } else {
          direction = json['direction'];
    }
    if (json['road'] == null) {
      road = null;
    } else {
          road = json['road'];
    }
    if (json['turn'] == null) {
      turn = null;
    } else {
          turn = json['turn'];
    }
    if (json['line'] == null) {
      line = null;
    } else {
          line = json['line'];
    }
    if (json['departure_station'] == null) {
      departureStation = null;
    } else {
          departureStation = json['departure_station'];
    }
    if (json['arrival_station'] == null) {
      arrivalStation = null;
    } else {
          arrivalStation = json['arrival_station'];
    }
    if (json['departs_at'] == null) {
      departsAt = null;
    } else {
          departsAt = json['departs_at'];
    }
    if (json['arrives_at'] == null) {
      arrivesAt = null;
    } else {
          arrivesAt = json['arrives_at'];
    }
    if (json['num_stops'] == null) {
      numStops = null;
    } else {
          numStops = json['num_stops'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (mode != null)
      json['mode'] = mode;
    if (directions != null)
      json['directions'] = directions;
    if (distance != null)
      json['distance'] = distance;
    if (travelTime != null)
      json['travel_time'] = travelTime;
    if (coords != null)
      json['coords'] = coords;
    if (direction != null)
      json['direction'] = direction;
    if (road != null)
      json['road'] = road;
    if (turn != null)
      json['turn'] = turn;
    if (line != null)
      json['line'] = line;
    if (departureStation != null)
      json['departure_station'] = departureStation;
    if (arrivalStation != null)
      json['arrival_station'] = arrivalStation;
    if (departsAt != null)
      json['departs_at'] = departsAt;
    if (arrivesAt != null)
      json['arrives_at'] = arrivesAt;
    if (numStops != null)
      json['num_stops'] = numStops;
    return json;
  }

  static List<ResponseRoutePart> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutePart>() : json.map((value) => new ResponseRoutePart.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutePart> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutePart>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutePart.fromJson(value));
    }
    return map;
  }
}

