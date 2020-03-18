part of openapi.api;

class ResponseFareTicket {
  
  String type = null;
  //enum typeEnum {  single,  week,  month,  year,  };{
  
  double price = null;
  
  String currency = null;
  ResponseFareTicket();

  @override
  String toString() {
    return 'ResponseFareTicket[type=$type, price=$price, currency=$currency, ]';
  }

  ResponseFareTicket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    price = (json['price'] == null) ?
      null :
      json['price'].toDouble();
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (type != null)
      json['type'] = type;
    if (price != null)
      json['price'] = price;
    if (currency != null)
      json['currency'] = currency;
    return json;
  }

  static List<ResponseFareTicket> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseFareTicket>() : json.map((value) => ResponseFareTicket.fromJson(value)).toList();
  }

  static Map<String, ResponseFareTicket> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseFareTicket>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseFareTicket.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseFareTicket-objects as value to a dart map
  static Map<String, List<ResponseFareTicket>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseFareTicket>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseFareTicket.listFromJson(value);
       });
     }
     return map;
  }
}

