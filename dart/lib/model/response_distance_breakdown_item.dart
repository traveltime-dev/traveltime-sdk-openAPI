part of openapi.api;

class ResponseDistanceBreakdownItem {
  
  ResponseTransportationMode mode = null;
  
  int distance = null;
  ResponseDistanceBreakdownItem();

  @override
  String toString() {
    return 'ResponseDistanceBreakdownItem[mode=$mode, distance=$distance, ]';
  }

  ResponseDistanceBreakdownItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode = new ResponseTransportationMode.fromJson(json['mode']);
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'mode': mode,
      'distance': distance
    };
  }

  static List<ResponseDistanceBreakdownItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseDistanceBreakdownItem>() : json.map((value) => new ResponseDistanceBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseDistanceBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseDistanceBreakdownItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseDistanceBreakdownItem.fromJson(value));
    }
    return map;
  }
}

