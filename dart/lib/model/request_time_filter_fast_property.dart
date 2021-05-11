//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeFilterFastProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeFilterFastProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const travelTime = RequestTimeFilterFastProperty._(r'travel_time');
  static const fares = RequestTimeFilterFastProperty._(r'fares');

  /// List of all possible values in this [enum][RequestTimeFilterFastProperty].
  static const values = <RequestTimeFilterFastProperty>[
    travelTime,
    fares,
  ];

  static RequestTimeFilterFastProperty fromJson(dynamic value) =>
    RequestTimeFilterFastPropertyTypeTransformer().decode(value);

  static List<RequestTimeFilterFastProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeFilterFastProperty>[]
      : json
          .map((value) => RequestTimeFilterFastProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeFilterFastProperty] to String,
/// and [decode] dynamic data back to [RequestTimeFilterFastProperty].
class RequestTimeFilterFastPropertyTypeTransformer {
  const RequestTimeFilterFastPropertyTypeTransformer._();

  factory RequestTimeFilterFastPropertyTypeTransformer() => _instance ??= RequestTimeFilterFastPropertyTypeTransformer._();

  String encode(RequestTimeFilterFastProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeFilterFastProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeFilterFastProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'travel_time': return RequestTimeFilterFastProperty.travelTime;
      case r'fares': return RequestTimeFilterFastProperty.fares;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeFilterFastPropertyTypeTransformer] instance.
  static RequestTimeFilterFastPropertyTypeTransformer _instance;
}
