//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeFilterPostcodeDistrictsProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeFilterPostcodeDistrictsProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTimeReachable = RequestTimeFilterPostcodeDistrictsProperty._(r'travel_time_reachable');
  static const travelTimeAll = RequestTimeFilterPostcodeDistrictsProperty._(r'travel_time_all');
  static const coverage = RequestTimeFilterPostcodeDistrictsProperty._(r'coverage');

  /// List of all possible values in this [enum][RequestTimeFilterPostcodeDistrictsProperty].
  static const values = <RequestTimeFilterPostcodeDistrictsProperty>[
    travelTimeReachable,
    travelTimeAll,
    coverage,
  ];

  static RequestTimeFilterPostcodeDistrictsProperty fromJson(dynamic value) =>
    RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer().decode(value);

  static List<RequestTimeFilterPostcodeDistrictsProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeDistrictsProperty>[]
      : json
          .map((value) => RequestTimeFilterPostcodeDistrictsProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeFilterPostcodeDistrictsProperty] to String,
/// and [decode] dynamic data back to [RequestTimeFilterPostcodeDistrictsProperty].
class RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer {
  const RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer._();

  factory RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer() => _instance ??= RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer._();

  String encode(RequestTimeFilterPostcodeDistrictsProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeFilterPostcodeDistrictsProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeFilterPostcodeDistrictsProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time_reachable': return RequestTimeFilterPostcodeDistrictsProperty.travelTimeReachable;
      case r'travel_time_all': return RequestTimeFilterPostcodeDistrictsProperty.travelTimeAll;
      case r'coverage': return RequestTimeFilterPostcodeDistrictsProperty.coverage;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer] instance.
  static RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer _instance;
}
