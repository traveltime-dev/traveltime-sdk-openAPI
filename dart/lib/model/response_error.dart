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
    if (json['http_status'] == null) {
      httpStatus = null;
    } else {
          httpStatus = json['http_status'];
    }
    if (json['error_code'] == null) {
      errorCode = null;
    } else {
          errorCode = json['error_code'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['documentation_link'] == null) {
      documentationLink = null;
    } else {
          documentationLink = json['documentation_link'];
    }
    if (json['additional_info'] == null) {
      additionalInfo = null;
    } else {
      additionalInfo = List.mapFromJson(json['additional_info']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (httpStatus != null)
      json['http_status'] = httpStatus;
    if (errorCode != null)
      json['error_code'] = errorCode;
    if (description != null)
      json['description'] = description;
    if (documentationLink != null)
      json['documentation_link'] = documentationLink;
    if (additionalInfo != null)
      json['additional_info'] = additionalInfo;
    return json;
  }

  static List<ResponseError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseError>() : json.map((value) => new ResponseError.fromJson(value)).toList();
  }

  static Map<String, ResponseError> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseError.fromJson(value));
    }
    return map;
  }
}

