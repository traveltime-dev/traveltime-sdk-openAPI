part of openapi.api;

class ResponseError {
  
  int httpStatus = null;
  
  int errorCode = null;
  
  String description = null;
  
  String documentationLink = null;
  
  Map<String, List<String>> additionalInfo = {};

  ResponseError({
    this.httpStatus,
    this.errorCode,
    this.description,
    this.documentationLink,
    this.additionalInfo,
  });

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
    additionalInfo = (json['additional_info'] == null) ?
      null :
      .mapListFromJson(json['additional_info']);
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
    return json == null ? List<ResponseError>() : json.map((value) => ResponseError.fromJson(value)).toList();
  }

  static Map<String, ResponseError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseError-objects as value to a dart map
  static Map<String, List<ResponseError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseError.listFromJson(value);
       });
     }
     return map;
  }
}

