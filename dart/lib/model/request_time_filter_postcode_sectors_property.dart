//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeFilterPostcodeSectorsProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeFilterPostcodeSectorsProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTimeReachable = RequestTimeFilterPostcodeSectorsProperty._(r'travel_time_reachable');
  static const travelTimeAll = RequestTimeFilterPostcodeSectorsProperty._(r'travel_time_all');
  static const coverage = RequestTimeFilterPostcodeSectorsProperty._(r'coverage');

  /// List of all possible values in this [enum][RequestTimeFilterPostcodeSectorsProperty].
  static const values = <RequestTimeFilterPostcodeSectorsProperty>[
    travelTimeReachable,
    travelTimeAll,
    coverage,
  ];

  static RequestTimeFilterPostcodeSectorsProperty fromJson(dynamic value) =>
    RequestTimeFilterPostcodeSectorsPropertyTypeTransformer().decode(value);

  static List<RequestTimeFilterPostcodeSectorsProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodeSectorsProperty>[]
      : json
          .map((value) => RequestTimeFilterPostcodeSectorsProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeFilterPostcodeSectorsProperty] to String,
/// and [decode] dynamic data back to [RequestTimeFilterPostcodeSectorsProperty].
class RequestTimeFilterPostcodeSectorsPropertyTypeTransformer {
  const RequestTimeFilterPostcodeSectorsPropertyTypeTransformer._();

  factory RequestTimeFilterPostcodeSectorsPropertyTypeTransformer() => _instance ??= RequestTimeFilterPostcodeSectorsPropertyTypeTransformer._();

  String encode(RequestTimeFilterPostcodeSectorsProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeFilterPostcodeSectorsProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeFilterPostcodeSectorsProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time_reachable': return RequestTimeFilterPostcodeSectorsProperty.travelTimeReachable;
      case r'travel_time_all': return RequestTimeFilterPostcodeSectorsProperty.travelTimeAll;
      case r'coverage': return RequestTimeFilterPostcodeSectorsProperty.coverage;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeFilterPostcodeSectorsPropertyTypeTransformer] instance.
  static RequestTimeFilterPostcodeSectorsPropertyTypeTransformer _instance;
}
