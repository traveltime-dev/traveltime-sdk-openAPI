//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseFaresFast {
  /// Returns a new [ResponseFaresFast] instance.
  ResponseFaresFast({
    this.ticketsTotal = const [],
  });

  List<ResponseFareTicket> ticketsTotal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseFaresFast &&
     other.ticketsTotal == ticketsTotal;

  @override
  int get hashCode =>
    (ticketsTotal == null ? 0 : ticketsTotal.hashCode);

  @override
  String toString() => 'ResponseFaresFast[ticketsTotal=$ticketsTotal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tickets_total'] = ticketsTotal;
    return json;
  }

  /// Returns a new [ResponseFaresFast] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseFaresFast fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseFaresFast(
        ticketsTotal: ResponseFareTicket.listFromJson(json[r'tickets_total']),
    );

  static List<ResponseFaresFast> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseFaresFast>[]
      : json.map((v) => ResponseFaresFast.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseFaresFast> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseFaresFast>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseFaresFast.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseFaresFast-objects as value to a dart map
  static Map<String, List<ResponseFaresFast>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseFaresFast>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseFaresFast.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

