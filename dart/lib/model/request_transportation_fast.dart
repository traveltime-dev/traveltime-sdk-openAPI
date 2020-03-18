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
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<RequestTransportationFast> listFromJson(List<dynamic> json) {
    return json == null ? List<RequestTransportationFast>() : json.map((value) => RequestTransportationFast.fromJson(value)).toList();
  }

  static Map<String, RequestTransportationFast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RequestTransportationFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RequestTransportationFast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RequestTransportationFast-objects as value to a dart map
  static Map<String, List<RequestTransportationFast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RequestTransportationFast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RequestTransportationFast.listFromJson(value);
       });
     }
     return map;
  }
}

