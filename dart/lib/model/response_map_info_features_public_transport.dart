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
    if (json['date_start'] == null) {
      dateStart = null;
    } else {
      dateStart = DateTime.parse(json['date_start']);
    }
    if (json['date_end'] == null) {
      dateEnd = null;
    } else {
      dateEnd = DateTime.parse(json['date_end']);
    }
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
    return json == null ? new List<ResponseMapInfoFeaturesPublicTransport>() : json.map((value) => new ResponseMapInfoFeaturesPublicTransport.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeaturesPublicTransport> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoFeaturesPublicTransport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoFeaturesPublicTransport.fromJson(value));
    }
    return map;
  }
}

