part of openapi.api;

class ResponseRoutePart {
  
  String id = null;
  
  String type = null;
  //enum typeEnum {  basic,  start_end,  road,  public_transport,  };{
  
  ResponseTransportationMode mode = null;
  
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
    id = json['id'];
    type = json['type'];
    mode = new ResponseTransportationMode.fromJson(json['mode']);
    directions = json['directions'];
    distance = json['distance'];
    travelTime = json['travel_time'];
    coords = Coords.listFromJson(json['coords']);
    direction = json['direction'];
    road = json['road'];
    turn = json['turn'];
    line = json['line'];
    departureStation = json['departure_station'];
    arrivalStation = json['arrival_station'];
    departsAt = json['departs_at'];
    arrivesAt = json['arrives_at'];
    numStops = json['num_stops'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'mode': mode,
      'directions': directions,
      'distance': distance,
      'travel_time': travelTime,
      'coords': coords,
      'direction': direction,
      'road': road,
      'turn': turn,
      'line': line,
      'departure_station': departureStation,
      'arrival_station': arrivalStation,
      'departs_at': departsAt,
      'arrives_at': arrivesAt,
      'num_stops': numStops
    };
  }

  static List<ResponseRoutePart> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseRoutePart>() : json.map((value) => new ResponseRoutePart.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutePart> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseRoutePart>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseRoutePart.fromJson(value));
    }
    return map;
  }
}

