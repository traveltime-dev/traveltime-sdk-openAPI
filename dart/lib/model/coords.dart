//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Coords {
  /// Returns a new [Coords] instance.
  Coords({
    @required this.lat,
    @required this.lng,
  });

  double lat;

  double lng;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Coords &&
     other.lat == lat &&
     other.lng == lng;

  @override
  int get hashCode =>
    (lat == null ? 0 : lat.hashCode) +
    (lng == null ? 0 : lng.hashCode);

  @override
  String toString() => 'Coords[lat=$lat, lng=$lng]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lat'] = lat;
      json[r'lng'] = lng;
    return json;
  }

  /// Returns a new [Coords] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Coords fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Coords(
        lat: json[r'lat'],
        lng: json[r'lng'],
    );

  static List<Coords> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Coords>[]
      : json.map((v) => Coords.fromJson(v)).toList(growable: true == growable);

  static Map<String, Coords> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Coords>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Coords.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Coords-objects as value to a dart map
  static Map<String, List<Coords>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Coords>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Coords.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

