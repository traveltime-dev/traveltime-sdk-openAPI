part of openapi.api;

class ResponseDistanceBreakdownItem {
  
  ResponseTransportationMode mode = null;
  //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };{
  
  int distance = null;

  ResponseDistanceBreakdownItem({
    this.mode,
    this.distance,
  });

  @override
  String toString() {
    return 'ResponseDistanceBreakdownItem[mode=$mode, distance=$distance, ]';
  }

  ResponseDistanceBreakdownItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode = (json['mode'] == null) ?
      null :
      ResponseTransportationMode.fromJson(json['mode']);
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mode != null)
      json['mode'] = mode;
    if (distance != null)
      json['distance'] = distance;
    return json;
  }

  static List<ResponseDistanceBreakdownItem> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseDistanceBreakdownItem>() : json.map((value) => ResponseDistanceBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseDistanceBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseDistanceBreakdownItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseDistanceBreakdownItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseDistanceBreakdownItem-objects as value to a dart map
  static Map<String, List<ResponseDistanceBreakdownItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseDistanceBreakdownItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseDistanceBreakdownItem.listFromJson(value);
       });
     }
     return map;
  }
}

