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
    if (json['tickets_total'] == null) {
      ticketsTotal = null;
    } else {
      ticketsTotal = ResponseFareTicket.listFromJson(json['tickets_total']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ticketsTotal != null)
      json['tickets_total'] = ticketsTotal;
    return json;
  }

  static List<ResponseFaresFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFaresFast>() : json.map((value) => new ResponseFaresFast.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFaresFast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFaresFast.fromJson(value));
    }
    return map;
  }
}

