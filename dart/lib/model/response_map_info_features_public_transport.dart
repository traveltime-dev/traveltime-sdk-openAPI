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
    dateStart = json['date_start'] == null ? null : DateTime.parse(json['date_start']);
    dateEnd = json['date_end'] == null ? null : DateTime.parse(json['date_end']);
  }

  Map<String, dynamic> toJson() {
    return {
      'date_start': dateStart == null ? '' : dateStart.toUtc().toIso8601String(),
      'date_end': dateEnd == null ? '' : dateEnd.toUtc().toIso8601String()
    };
  }

  static List<ResponseMapInfoFeaturesPublicTransport> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseMapInfoFeaturesPublicTransport>() : json.map((value) => new ResponseMapInfoFeaturesPublicTransport.fromJson(value)).toList();
  }

  static Map<String, ResponseMapInfoFeaturesPublicTransport> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseMapInfoFeaturesPublicTransport>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseMapInfoFeaturesPublicTransport.fromJson(value));
    }
    return map;
  }
}

