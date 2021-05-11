//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseError {
  /// Returns a new [ResponseError] instance.
  ResponseError({
    this.httpStatus,
    this.errorCode,
    this.description,
    this.documentationLink,
    this.additionalInfo = const {},
  });

  int httpStatus;

  int errorCode;

  String description;

  String documentationLink;

  Map<String, List<String>> additionalInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseError &&
     other.httpStatus == httpStatus &&
     other.errorCode == errorCode &&
     other.description == description &&
     other.documentationLink == documentationLink &&
     other.additionalInfo == additionalInfo;

  @override
  int get hashCode =>
    (httpStatus == null ? 0 : httpStatus.hashCode) +
    (errorCode == null ? 0 : errorCode.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (documentationLink == null ? 0 : documentationLink.hashCode) +
    (additionalInfo == null ? 0 : additionalInfo.hashCode);

  @override
  String toString() => 'ResponseError[httpStatus=$httpStatus, errorCode=$errorCode, description=$description, documentationLink=$documentationLink, additionalInfo=$additionalInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (httpStatus != null) {
      json[r'http_status'] = httpStatus;
    }
    if (errorCode != null) {
      json[r'error_code'] = errorCode;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (documentationLink != null) {
      json[r'documentation_link'] = documentationLink;
    }
    if (additionalInfo != null) {
      json[r'additional_info'] = additionalInfo;
    }
    return json;
  }

  /// Returns a new [ResponseError] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseError fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseError(
        httpStatus: json[r'http_status'],
        errorCode: json[r'error_code'],
        description: json[r'description'],
        documentationLink: json[r'documentation_link'],
        additionalInfo: json[r'additional_info'] == null
          ? null
          : (json[r'additional_info'] as Map).cast<String, List>(),
    );

  static List<ResponseError> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseError>[]
      : json.map((v) => ResponseError.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseError> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseError>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseError.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseError-objects as value to a dart map
  static Map<String, List<ResponseError>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseError>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseError.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

