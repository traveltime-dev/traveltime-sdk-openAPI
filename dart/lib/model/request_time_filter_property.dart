//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeFilterProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeFilterProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTime = RequestTimeFilterProperty._(r'travel_time');
  static const distance = RequestTimeFilterProperty._(r'distance');
  static const distanceBreakdown = RequestTimeFilterProperty._(r'distance_breakdown');
  static const fares = RequestTimeFilterProperty._(r'fares');
  static const route = RequestTimeFilterProperty._(r'route');

  /// List of all possible values in this [enum][RequestTimeFilterProperty].
  static const values = <RequestTimeFilterProperty>[
    travelTime,
    distance,
    distanceBreakdown,
    fares,
    route,
  ];

  static RequestTimeFilterProperty fromJson(dynamic value) =>
    RequestTimeFilterPropertyTypeTransformer().decode(value);

  static List<RequestTimeFilterProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterProperty>[]
      : json
          .map((value) => RequestTimeFilterProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeFilterProperty] to String,
/// and [decode] dynamic data back to [RequestTimeFilterProperty].
class RequestTimeFilterPropertyTypeTransformer {
  const RequestTimeFilterPropertyTypeTransformer._();

  factory RequestTimeFilterPropertyTypeTransformer() => _instance ??= RequestTimeFilterPropertyTypeTransformer._();

  String encode(RequestTimeFilterProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeFilterProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeFilterProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time': return RequestTimeFilterProperty.travelTime;
      case r'distance': return RequestTimeFilterProperty.distance;
      case r'distance_breakdown': return RequestTimeFilterProperty.distanceBreakdown;
      case r'fares': return RequestTimeFilterProperty.fares;
      case r'route': return RequestTimeFilterProperty.route;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeFilterPropertyTypeTransformer] instance.
  static RequestTimeFilterPropertyTypeTransformer _instance;
}
