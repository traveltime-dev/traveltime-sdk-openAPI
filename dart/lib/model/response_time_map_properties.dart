part of openapi.api;

class ResponseTimeMapProperties {
  
  bool isOnlyWalking = null;
  ResponseTimeMapProperties();

  @override
  String toString() {
    return 'ResponseTimeMapProperties[isOnlyWalking=$isOnlyWalking, ]';
  }

  ResponseTimeMapProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isOnlyWalking = json['is_only_walking'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isOnlyWalking != null)
      json['is_only_walking'] = isOnlyWalking;
    return json;
  }

  static List<ResponseTimeMapProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ResponseTimeMapProperties>() : json.map((value) => ResponseTimeMapProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseTimeMapProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseTimeMapProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeMapProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseTimeMapProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseTimeMapProperties.listFromJson(value);
       });
     }
     return map;
  }
}

