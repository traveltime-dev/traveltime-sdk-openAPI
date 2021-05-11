//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTimeMapProperties {
  /// Returns a new [ResponseTimeMapProperties] instance.
  ResponseTimeMapProperties({
    this.isOnlyWalking,
  });

  bool isOnlyWalking;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTimeMapProperties &&
     other.isOnlyWalking == isOnlyWalking;

  @override
  int get hashCode =>
    (isOnlyWalking == null ? 0 : isOnlyWalking.hashCode);

  @override
  String toString() => 'ResponseTimeMapProperties[isOnlyWalking=$isOnlyWalking]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (isOnlyWalking != null) {
      json[r'is_only_walking'] = isOnlyWalking;
    }
    return json;
  }

  /// Returns a new [ResponseTimeMapProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTimeMapProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTimeMapProperties(
        isOnlyWalking: json[r'is_only_walking'],
    );

  static List<ResponseTimeMapProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTimeMapProperties>[]
      : json.map((v) => ResponseTimeMapProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTimeMapProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTimeMapProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTimeMapProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTimeMapProperties-objects as value to a dart map
  static Map<String, List<ResponseTimeMapProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTimeMapProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTimeMapProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

