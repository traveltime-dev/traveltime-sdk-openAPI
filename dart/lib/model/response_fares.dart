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
    breakdown = (json['breakdown'] == null) ?
      null :
      ResponseFaresBreakdownItem.listFromJson(json['breakdown']);
    ticketsTotal = (json['tickets_total'] == null) ?
      null :
      ResponseFareTicket.listFromJson(json['tickets_total']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (breakdown != null)
      json['breakdown'] = breakdown;
    if (ticketsTotal != null)
      json['tickets_total'] = ticketsTotal;
    return json;
  }

  static List<ResponseFares> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseFares>() : json.map((value) => ResponseFares.fromJson(value)).toList();
  }

  static Map<String, ResponseFares> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseFares>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseFares.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseFares-objects as value to a dart map
  static Map<String, List<ResponseFares>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseFares>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseFares.listFromJson(value);
       });
     }
     return map;
  }
}

