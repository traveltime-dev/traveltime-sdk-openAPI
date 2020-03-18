part of openapi.api;

class ResponseMapInfoFeaturesPublicTransport {
  
  DateTime dateStart = null;
  
  DateTime dateEnd = null;
  ResponseMapInfoFeaturesPublicTransport();

  @override
  String toString() {
    return 'ResponseMapInfoFeaturesPublicTransport[dateStart=$dateStart, dateEnd=$dateEnd, ]';
  }

  ResponseMapInfoFeaturesPublicTransport.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dateStart = (json['date_start'] == null) ?
      null :
      DateTime.parse(json['date_start']);
    dateEnd = (json['date_end'] == null) ?
      null :
      DateTime.parse(json['date_end']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dateStart != null)
      json['date_start'] = dateStart == null ? null : dateStart.toUtc().toIso8601String();
    if (dateEnd != null)
      json['date_end'] = dateEnd == null ? null : dateEnd.toUtc().toIso8601String();
    return json;
  }

  static List<ResponseMapInfoFeaturesPublicTransport> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseMapInfoFeaturesPublicTransport>() : json.map((value) => ResponseMapInfoFeaturesPublicTransport.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeaturesPublicTransport> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseMapInfoFeaturesPublicTransport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseMapInfoFeaturesPublicTransport.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoFeaturesPublicTransport-objects as value to a dart map
  static Map<String, List<ResponseMapInfoFeaturesPublicTransport>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseMapInfoFeaturesPublicTransport>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseMapInfoFeaturesPublicTransport.listFromJson(value);
       });
     }
     return map;
  }
}

