//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseBoundingBox {
  /// Returns a new [ResponseBoundingBox] instance.
  ResponseBoundingBox({
    @required this.envelope,
    this.boxes = const [],
  });

  ResponseBox envelope;

  List<ResponseBox> boxes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseBoundingBox &&
     other.envelope == envelope &&
     other.boxes == boxes;

  @override
  int get hashCode =>
    (envelope == null ? 0 : envelope.hashCode) +
    (boxes == null ? 0 : boxes.hashCode);

  @override
  String toString() => 'ResponseBoundingBox[envelope=$envelope, boxes=$boxes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'envelope'] = envelope;
      json[r'boxes'] = boxes;
    return json;
  }

  /// Returns a new [ResponseBoundingBox] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseBoundingBox fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseBoundingBox(
        envelope: ResponseBox.fromJson(json[r'envelope']),
        boxes: ResponseBox.listFromJson(json[r'boxes']),
    );

  static List<ResponseBoundingBox> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseBoundingBox>[]
      : json.map((v) => ResponseBoundingBox.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseBoundingBox> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseBoundingBox>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseBoundingBox.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseBoundingBox-objects as value to a dart map
  static Map<String, List<ResponseBoundingBox>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseBoundingBox>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseBoundingBox.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

