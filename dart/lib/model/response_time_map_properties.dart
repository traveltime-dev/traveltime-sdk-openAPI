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
    if (json['is_only_walking'] == null) {
      isOnlyWalking = null;
    } else {
          isOnlyWalking = json['is_only_walking'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isOnlyWalking != null)
      json['is_only_walking'] = isOnlyWalking;
    return json;
  }

  static List<ResponseTimeMapProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseTimeMapProperties>() : json.map((value) => new ResponseTimeMapProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseTimeMapProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseTimeMapProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseTimeMapProperties.fromJson(value));
    }
    return map;
  }
}

