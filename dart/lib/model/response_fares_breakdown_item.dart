//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseFaresBreakdownItem {
  /// Returns a new [ResponseFaresBreakdownItem] instance.
  ResponseFaresBreakdownItem({
    this.modes = const [],
    this.routePartIds = const [],
    this.tickets = const [],
  });

  List<ResponseTransportationMode> modes;

  List<int> routePartIds;

  List<ResponseFareTicket> tickets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseFaresBreakdownItem &&
     other.modes == modes &&
     other.routePartIds == routePartIds &&
     other.tickets == tickets;

  @override
  int get hashCode =>
    (modes == null ? 0 : modes.hashCode) +
    (routePartIds == null ? 0 : routePartIds.hashCode) +
    (tickets == null ? 0 : tickets.hashCode);

  @override
  String toString() => 'ResponseFaresBreakdownItem[modes=$modes, routePartIds=$routePartIds, tickets=$tickets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'modes'] = modes;
      json[r'route_part_ids'] = routePartIds;
      json[r'tickets'] = tickets;
    return json;
  }

  /// Returns a new [ResponseFaresBreakdownItem] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseFaresBreakdownItem fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseFaresBreakdownItem(
        modes: ResponseTransportationMode.listFromJson(json[r'modes']),
        routePartIds: json[r'route_part_ids'] == null
          ? null
          : (json[r'route_part_ids'] as List).cast<int>(),
        tickets: ResponseFareTicket.listFromJson(json[r'tickets']),
    );

  static List<ResponseFaresBreakdownItem> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseFaresBreakdownItem>[]
      : json.map((v) => ResponseFaresBreakdownItem.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseFaresBreakdownItem> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseFaresBreakdownItem>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseFaresBreakdownItem.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseFaresBreakdownItem-objects as value to a dart map
  static Map<String, List<ResponseFaresBreakdownItem>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseFaresBreakdownItem>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseFaresBreakdownItem.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

