//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeFilterPostcodesProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeFilterPostcodesProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTime = RequestTimeFilterPostcodesProperty._(r'travel_time');
  static const distance = RequestTimeFilterPostcodesProperty._(r'distance');

  /// List of all possible values in this [enum][RequestTimeFilterPostcodesProperty].
  static const values = <RequestTimeFilterPostcodesProperty>[
    travelTime,
    distance,
  ];

  static RequestTimeFilterPostcodesProperty fromJson(dynamic value) =>
    RequestTimeFilterPostcodesPropertyTypeTransformer().decode(value);

  static List<RequestTimeFilterPostcodesProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterPostcodesProperty>[]
      : json
          .map((value) => RequestTimeFilterPostcodesProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeFilterPostcodesProperty] to String,
/// and [decode] dynamic data back to [RequestTimeFilterPostcodesProperty].
class RequestTimeFilterPostcodesPropertyTypeTransformer {
  const RequestTimeFilterPostcodesPropertyTypeTransformer._();

  factory RequestTimeFilterPostcodesPropertyTypeTransformer() => _instance ??= RequestTimeFilterPostcodesPropertyTypeTransformer._();

  String encode(RequestTimeFilterPostcodesProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeFilterPostcodesProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeFilterPostcodesProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time': return RequestTimeFilterPostcodesProperty.travelTime;
      case r'distance': return RequestTimeFilterPostcodesProperty.distance;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeFilterPostcodesPropertyTypeTransformer] instance.
  static RequestTimeFilterPostcodesPropertyTypeTransformer _instance;
}
