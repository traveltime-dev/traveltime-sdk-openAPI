part of openapi.api;

class ResponseBox {
  
  double minLat = null;
  
  double maxLat = null;
  
  double minLng = null;
  
  double maxLng = null;

  ResponseBox({
    this.minLat,
    this.maxLat,
    this.minLng,
    this.maxLng,
  });

  @override
  String toString() {
    return 'ResponseBox[minLat=$minLat, maxLat=$maxLat, minLng=$minLng, maxLng=$maxLng, ]';
  }

  ResponseBox.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minLat = (json['min_lat'] == null) ?
      null :
      json['min_lat'].toDouble();
    maxLat = (json['max_lat'] == null) ?
      null :
      json['max_lat'].toDouble();
    minLng = (json['min_lng'] == null) ?
      null :
      json['min_lng'].toDouble();
    maxLng = (json['max_lng'] == null) ?
      null :
      json['max_lng'].toDouble();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (minLat != null)
      json['min_lat'] = minLat;
    if (maxLat != null)
      json['max_lat'] = maxLat;
    if (minLng != null)
      json['min_lng'] = minLng;
    if (maxLng != null)
      json['max_lng'] = maxLng;
    return json;
  }

  static List<ResponseBox> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseBox>() : json.map((value) => ResponseBox.fromJson(value)).toList();
  }

  static Map<String, ResponseBox> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseBox>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseBox.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseBox-objects as value to a dart map
  static Map<String, List<ResponseBox>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseBox>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseBox.listFromJson(value);
       });
     }
     return map;
  }
}

