//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseTravelTimeStatistics {
  /// Returns a new [ResponseTravelTimeStatistics] instance.
  ResponseTravelTimeStatistics({
    @required this.min,
    @required this.max,
    @required this.mean,
    @required this.median,
  });

  int min;

  int max;

  int mean;

  int median;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseTravelTimeStatistics &&
     other.min == min &&
     other.max == max &&
     other.mean == mean &&
     other.median == median;

  @override
  int get hashCode =>
    (min == null ? 0 : min.hashCode) +
    (max == null ? 0 : max.hashCode) +
    (mean == null ? 0 : mean.hashCode) +
    (median == null ? 0 : median.hashCode);

  @override
  String toString() => 'ResponseTravelTimeStatistics[min=$min, max=$max, mean=$mean, median=$median]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min'] = min;
      json[r'max'] = max;
      json[r'mean'] = mean;
      json[r'median'] = median;
    return json;
  }

  /// Returns a new [ResponseTravelTimeStatistics] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseTravelTimeStatistics fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseTravelTimeStatistics(
        min: json[r'min'],
        max: json[r'max'],
        mean: json[r'mean'],
        median: json[r'median'],
    );

  static List<ResponseTravelTimeStatistics> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTravelTimeStatistics>[]
      : json.map((v) => ResponseTravelTimeStatistics.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseTravelTimeStatistics> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseTravelTimeStatistics>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseTravelTimeStatistics.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseTravelTimeStatistics-objects as value to a dart map
  static Map<String, List<ResponseTravelTimeStatistics>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseTravelTimeStatistics>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseTravelTimeStatistics.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

