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
    ticketsTotal = ResponseFareTicket.listFromJson(json['tickets_total']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tickets_total': ticketsTotal
    };
  }

  static List<ResponseFaresFast> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFaresFast>() : json.map((value) => new ResponseFaresFast.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresFast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFaresFast>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFaresFast.fromJson(value));
    }
    return map;
  }
}

