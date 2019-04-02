part of openapi.api;

class ResponseFaresBreakdownItem {
  
  List<ResponseTransportationMode> modes = [];
  
  List<int> routePartIds = [];
  
  List<ResponseFareTicket> tickets = [];
  ResponseFaresBreakdownItem();

  @override
  String toString() {
    return 'ResponseFaresBreakdownItem[modes=$modes, routePartIds=$routePartIds, tickets=$tickets, ]';
  }

  ResponseFaresBreakdownItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modes = ResponseTransportationMode.listFromJson(json['modes']);
    routePartIds = ((json['route_part_ids'] ?? []) as List).map((item) => item as int).toList();
    tickets = ResponseFareTicket.listFromJson(json['tickets']);
  }

  Map<String, dynamic> toJson() {
    return {
      'modes': modes,
      'route_part_ids': routePartIds,
      'tickets': tickets
    };
  }

  static List<ResponseFaresBreakdownItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFaresBreakdownItem>() : json.map((value) => new ResponseFaresBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFaresBreakdownItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFaresBreakdownItem.fromJson(value));
    }
    return map;
  }
}

