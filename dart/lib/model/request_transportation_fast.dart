part of openapi.api;

class RequestTransportationFast {
  
  String type = null;
  //enum typeEnum {  public_transport,  driving,  driving+public_transport,  };{
  RequestTransportationFast();

  @override
  String toString() {
    return 'RequestTransportationFast[type=$type, ]';
  }

  RequestTransportationFast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type
    };
  }

  static List<RequestTransportationFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTransportationFast>() : json.map((value) => new RequestTransportationFast.fromJson(value)).toList();
  }

  static Map<String, RequestTransportationFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RequestTransportationFast>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new RequestTransportationFast.fromJson(value));
    }
    return map;
  }
}

