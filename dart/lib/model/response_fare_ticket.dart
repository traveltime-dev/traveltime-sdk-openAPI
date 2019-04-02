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
    price = json['price'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'price': price,
      'currency': currency
    };
  }

  static List<ResponseFareTicket> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseFareTicket>() : json.map((value) => new ResponseFareTicket.fromJson(value)).toList();
  }

  static Map<String, ResponseFareTicket> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFareTicket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFareTicket.fromJson(value));
    }
    return map;
  }
}

