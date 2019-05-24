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
    if (json['modes'] == null) {
      modes = null;
    } else {
      modes = ResponseTransportationMode.listFromJson(json['modes']);
    }
    if (json['route_part_ids'] == null) {
      routePartIds = null;
    } else {
      routePartIds = (json['route_part_ids'] as List).cast<int>();
    }
    if (json['tickets'] == null) {
      tickets = null;
    } else {
      tickets = ResponseFareTicket.listFromJson(json['tickets']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (modes != null)
      json['modes'] = modes;
    if (routePartIds != null)
      json['route_part_ids'] = routePartIds;
    if (tickets != null)
      json['tickets'] = tickets;
    return json;
  }

  static List<ResponseFaresBreakdownItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFaresBreakdownItem>() : json.map((value) => new ResponseFaresBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFaresBreakdownItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFaresBreakdownItem.fromJson(value));
    }
    return map;
  }
}

