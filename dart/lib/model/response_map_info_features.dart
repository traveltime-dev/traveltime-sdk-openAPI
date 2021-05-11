//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseMapInfoFeatures {
  /// Returns a new [ResponseMapInfoFeatures] instance.
  ResponseMapInfoFeatures({
    this.publicTransport,
    @required this.fares,
    @required this.postcodes,
  });

  ResponseMapInfoFeaturesPublicTransport publicTransport;

  bool fares;

  bool postcodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseMapInfoFeatures &&
     other.publicTransport == publicTransport &&
     other.fares == fares &&
     other.postcodes == postcodes;

  @override
  int get hashCode =>
    (publicTransport == null ? 0 : publicTransport.hashCode) +
    (fares == null ? 0 : fares.hashCode) +
    (postcodes == null ? 0 : postcodes.hashCode);

  @override
  String toString() => 'ResponseMapInfoFeatures[publicTransport=$publicTransport, fares=$fares, postcodes=$postcodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (publicTransport != null) {
      json[r'public_transport'] = publicTransport;
    }
      json[r'fares'] = fares;
      json[r'postcodes'] = postcodes;
    return json;
  }

  /// Returns a new [ResponseMapInfoFeatures] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseMapInfoFeatures fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseMapInfoFeatures(
        publicTransport: ResponseMapInfoFeaturesPublicTransport.fromJson(json[r'public_transport']),
        fares: json[r'fares'],
        postcodes: json[r'postcodes'],
    );

  static List<ResponseMapInfoFeatures> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseMapInfoFeatures>[]
      : json.map((v) => ResponseMapInfoFeatures.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseMapInfoFeatures> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseMapInfoFeatures>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseMapInfoFeatures.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseMapInfoFeatures-objects as value to a dart map
  static Map<String, List<ResponseMapInfoFeatures>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseMapInfoFeatures>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseMapInfoFeatures.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

