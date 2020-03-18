part of openapi.api;

class ResponseFaresFast {
  
  List<ResponseFareTicket> ticketsTotal = [];
  ResponseFaresFast();

  @override
  String toString() {
    return 'ResponseFaresFast[ticketsTotal=$ticketsTotal, ]';
  }

  ResponseFaresFast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketsTotal = (json['tickets_total'] == null) ?
      null :
      ResponseFareTicket.listFromJson(json['tickets_total']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ticketsTotal != null)
      json['tickets_total'] = ticketsTotal;
    return json;
  }

  static List<ResponseFaresFast> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseFaresFast>() : json.map((value) => ResponseFaresFast.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresFast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseFaresFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseFaresFast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseFaresFast-objects as value to a dart map
  static Map<String, List<ResponseFaresFast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseFaresFast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseFaresFast.listFromJson(value);
       });
     }
     return map;
  }
}

