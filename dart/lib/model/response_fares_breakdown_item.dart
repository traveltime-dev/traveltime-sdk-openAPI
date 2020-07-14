part of openapi.api;

class ResponseFaresBreakdownItem {
  
  List<ResponseTransportationMode> modes = [];
  
  List<int> routePartIds = [];
  
  List<ResponseFareTicket> tickets = [];

  ResponseFaresBreakdownItem({
    this.modes,
    this.routePartIds,
    this.tickets,
  });

  @override
  String toString() {
    return 'ResponseFaresBreakdownItem[modes=$modes, routePartIds=$routePartIds, tickets=$tickets, ]';
  }

  ResponseFaresBreakdownItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modes = (json['modes'] == null) ?
      null :
      ResponseTransportationMode.listFromJson(json['modes']);
    routePartIds = (json['route_part_ids'] == null) ?
      null :
      (json['route_part_ids'] as List).cast<int>();
    tickets = (json['tickets'] == null) ?
      null :
      ResponseFareTicket.listFromJson(json['tickets']);
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
    return json == null ? List<ResponseFaresBreakdownItem>() : json.map((value) => ResponseFaresBreakdownItem.fromJson(value)).toList();
  }

  static Map<String, ResponseFaresBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseFaresBreakdownItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseFaresBreakdownItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseFaresBreakdownItem-objects as value to a dart map
  static Map<String, List<ResponseFaresBreakdownItem>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseFaresBreakdownItem>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseFaresBreakdownItem.listFromJson(value);
       });
     }
     return map;
  }
}

