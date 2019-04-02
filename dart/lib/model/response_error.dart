part of openapi.api;

class ResponseError {
  
  int httpStatus = null;
  
  int errorCode = null;
  
  String description = null;
  
  String documentationLink = null;
  
  Map<String, List<String>> additionalInfo = {};
  ResponseError();

  @override
  String toString() {
    return 'ResponseError[httpStatus=$httpStatus, errorCode=$errorCode, description=$description, documentationLink=$documentationLink, additionalInfo=$additionalInfo, ]';
  }

  ResponseError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    httpStatus = json['http_status'];
    errorCode = json['error_code'];
    description = json['description'];
    documentationLink = json['documentation_link'];
    additionalInfo = List.mapFromJson(json['additional_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      'http_status': httpStatus,
      'error_code': errorCode,
      'description': description,
      'documentation_link': documentationLink,
      'additional_info': additionalInfo
    };
  }

  static List<ResponseError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseError>() : json.map((value) => new ResponseError.fromJson(value)).toList();
  }

  static Map<String, ResponseError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseError.fromJson(value));
    }
    return map;
  }
}

