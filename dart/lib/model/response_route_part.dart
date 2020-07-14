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

  ResponseRoutePart({
    this.id,
    this.type,
    this.mode,
    this.directions,
    this.distance,
    this.travelTime,
    this.coords,
    this.direction,
    this.road,
    this.turn,
    this.line,
    this.departureStation,
    this.arrivalStation,
    this.departsAt,
    this.arrivesAt,
    this.numStops,
  });

  @override
  String toString() {
    return 'ResponseRoutePart[id=$id, type=$type, mode=$mode, directions=$directions, distance=$distance, travelTime=$travelTime, coords=$coords, direction=$direction, road=$road, turn=$turn, line=$line, departureStation=$departureStation, arrivalStation=$arrivalStation, departsAt=$departsAt, arrivesAt=$arrivesAt, numStops=$numStops, ]';
  }

  ResponseRoutePart.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    mode = (json['mode'] == null) ?
      null :
      ResponseTransportationMode.fromJson(json['mode']);
    directions = json['directions'];
    distance = json['distance'];
    travelTime = json['travel_time'];
    coords = (json['coords'] == null) ?
      null :
      Coords.listFromJson(json['coords']);
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
    return json == null ? List<ResponseRoutePart>() : json.map((value) => ResponseRoutePart.fromJson(value)).toList();
  }

  static Map<String, ResponseRoutePart> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseRoutePart>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseRoutePart.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseRoutePart-objects as value to a dart map
  static Map<String, List<ResponseRoutePart>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseRoutePart>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseRoutePart.listFromJson(value);
       });
     }
     return map;
  }
}

