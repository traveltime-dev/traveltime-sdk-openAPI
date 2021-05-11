//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseShape {
  /// Returns a new [ResponseShape] instance.
  ResponseShape({
    this.shell = const [],
    this.holes = const [],
  });

  List<Coords> shell;

  List<List<Coords>> holes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseShape &&
     other.shell == shell &&
     other.holes == holes;

  @override
  int get hashCode =>
    (shell == null ? 0 : shell.hashCode) +
    (holes == null ? 0 : holes.hashCode);

  @override
  String toString() => 'ResponseShape[shell=$shell, holes=$holes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'shell'] = shell;
      json[r'holes'] = holes;
    return json;
  }

  /// Returns a new [ResponseShape] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseShape fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseShape(
        shell: Coords.listFromJson(json[r'shell']),
        holes: json[r'holes'] == null
          ? null
          : (json[r'holes'] as List).map(
              Coords.listFromJson(json[r'holes'])
            ).toList(growable: false),
    );

  static List<ResponseShape> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseShape>[]
      : json.map((v) => ResponseShape.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseShape> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseShape>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseShape.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseShape-objects as value to a dart map
  static Map<String, List<ResponseShape>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseShape>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseShape.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

