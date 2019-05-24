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
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['price'] == null) {
      price = null;
    } else {
          price = json['price'];
    }
    if (json['currency'] == null) {
      currency = null;
    } else {
          currency = json['currency'];
    }
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
    return json == null ? new List<ResponseFareTicket>() : json.map((value) => new ResponseFareTicket.fromJson(value)).toList();
  }

  static Map<String, ResponseFareTicket> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseFareTicket>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseFareTicket.fromJson(value));
    }
    return map;
  }
}

