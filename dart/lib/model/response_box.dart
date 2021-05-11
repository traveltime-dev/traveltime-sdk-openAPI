//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseBox {
  /// Returns a new [ResponseBox] instance.
  ResponseBox({
    @required this.minLat,
    @required this.maxLat,
    @required this.minLng,
    @required this.maxLng,
  });

  double minLat;

  double maxLat;

  double minLng;

  double maxLng;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseBox &&
     other.minLat == minLat &&
     other.maxLat == maxLat &&
     other.minLng == minLng &&
     other.maxLng == maxLng;

  @override
  int get hashCode =>
    (minLat == null ? 0 : minLat.hashCode) +
    (maxLat == null ? 0 : maxLat.hashCode) +
    (minLng == null ? 0 : minLng.hashCode) +
    (maxLng == null ? 0 : maxLng.hashCode);

  @override
  String toString() => 'ResponseBox[minLat=$minLat, maxLat=$maxLat, minLng=$minLng, maxLng=$maxLng]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min_lat'] = minLat;
      json[r'max_lat'] = maxLat;
      json[r'min_lng'] = minLng;
      json[r'max_lng'] = maxLng;
    return json;
  }

  /// Returns a new [ResponseBox] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseBox fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseBox(
        minLat: json[r'min_lat'],
        maxLat: json[r'max_lat'],
        minLng: json[r'min_lng'],
        maxLng: json[r'max_lng'],
    );

  static List<ResponseBox> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseBox>[]
      : json.map((v) => ResponseBox.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseBox> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseBox>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseBox.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseBox-objects as value to a dart map
  static Map<String, List<ResponseBox>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseBox>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseBox.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

