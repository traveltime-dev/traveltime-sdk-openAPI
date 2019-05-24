part of openapi.api;

class ResponseDistanceBreakdownItem {
  
  ResponseTransportationMode mode = null;
  //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };{
  
  int distance = null;
  ResponseDistanceBreakdownItem();

  @override
  String toString() {
    return 'ResponseDistanceBreakdownItem[mode=$mode, distance=$distance, ]';
  }

  ResponseDistanceBreakdownItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mode'] == null) {
      mode = null;
    } else {
      mode = new ResponseTransportationMode.fromJson(json['mode']);
    }
    if (json['distance'] == null) {
      distance = null;
    } else {
          distance = json['distance'];
    }
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
    return json == null ? new List<ResponseDistanceBreakdownItem>() : json.map((value) => new ResponseDistanceBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseDistanceBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseDistanceBreakdownItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseDistanceBreakdownItem.fromJson(value));
    }
    return map;
  }
}

