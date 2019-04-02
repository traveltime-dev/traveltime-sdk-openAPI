part of openapi.api;

class ResponseFares {
  
  List<ResponseFaresBreakdownItem> breakdown = [];
  
  List<ResponseFareTicket> ticketsTotal = [];
  ResponseFares();

  @override
  String toString() {
    return 'ResponseFares[breakdown=$breakdown, ticketsTotal=$ticketsTotal, ]';
  }

  ResponseFares.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    breakdown = ResponseFaresBreakdownItem.listFromJson(json['breakdown']);
    ticketsTotal = ResponseFareTicket.listFromJson(json['tickets_total']);
  }

  Map<String, dynamic> toJson() {
    return {
      'breakdown': breakdown,
      'tickets_total': ticketsTotal
    };
  }

  static List<ResponseFares> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFares>() : json.map((value) => new ResponseFares.fromJson(value)).toList();
  }

  static Map<String, ResponseFares> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFares>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFares.fromJson(value));
    }
    return map;
  }
}

