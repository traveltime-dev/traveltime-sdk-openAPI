//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseFares {
  /// Returns a new [ResponseFares] instance.
  ResponseFares({
    this.breakdown = const [],
    this.ticketsTotal = const [],
  });

  List<ResponseFaresBreakdownItem> breakdown;

  List<ResponseFareTicket> ticketsTotal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseFares &&
     other.breakdown == breakdown &&
     other.ticketsTotal == ticketsTotal;

  @override
  int get hashCode =>
    (breakdown == null ? 0 : breakdown.hashCode) +
    (ticketsTotal == null ? 0 : ticketsTotal.hashCode);

  @override
  String toString() => 'ResponseFares[breakdown=$breakdown, ticketsTotal=$ticketsTotal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'breakdown'] = breakdown;
      json[r'tickets_total'] = ticketsTotal;
    return json;
  }

  /// Returns a new [ResponseFares] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseFares fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseFares(
        breakdown: ResponseFaresBreakdownItem.listFromJson(json[r'breakdown']),
        ticketsTotal: ResponseFareTicket.listFromJson(json[r'tickets_total']),
    );

  static List<ResponseFares> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseFares>[]
      : json.map((v) => ResponseFares.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseFares> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseFares>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseFares.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseFares-objects as value to a dart map
  static Map<String, List<ResponseFares>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseFares>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseFares.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

