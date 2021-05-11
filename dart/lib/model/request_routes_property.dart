//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestRoutesProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestRoutesProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTime = RequestRoutesProperty._(r'travel_time');
  static const distance = RequestRoutesProperty._(r'distance');
  static const fares = RequestRoutesProperty._(r'fares');
  static const route = RequestRoutesProperty._(r'route');

  /// List of all possible values in this [enum][RequestRoutesProperty].
  static const values = <RequestRoutesProperty>[
    travelTime,
    distance,
    fares,
    route,
  ];

  static RequestRoutesProperty fromJson(dynamic value) =>
    RequestRoutesPropertyTypeTransformer().decode(value);

  static List<RequestRoutesProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRoutesProperty>[]
      : json
          .map((value) => RequestRoutesProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestRoutesProperty] to String,
/// and [decode] dynamic data back to [RequestRoutesProperty].
class RequestRoutesPropertyTypeTransformer {
  const RequestRoutesPropertyTypeTransformer._();

  factory RequestRoutesPropertyTypeTransformer() => _instance ??= RequestRoutesPropertyTypeTransformer._();

  String encode(RequestRoutesProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestRoutesProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestRoutesProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time': return RequestRoutesProperty.travelTime;
      case r'distance': return RequestRoutesProperty.distance;
      case r'fares': return RequestRoutesProperty.fares;
      case r'route': return RequestRoutesProperty.route;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestRoutesPropertyTypeTransformer] instance.
  static RequestRoutesPropertyTypeTransformer _instance;
}
