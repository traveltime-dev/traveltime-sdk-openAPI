//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestArrivalTimePeriod {
  /// Instantiate a new enum with the provided [value].
  const RequestArrivalTimePeriod._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const weekdayMorning = RequestArrivalTimePeriod._(r'weekday_morning');

  /// List of all possible values in this [enum][RequestArrivalTimePeriod].
  static const values = <RequestArrivalTimePeriod>[
    weekdayMorning,
  ];

  static RequestArrivalTimePeriod fromJson(dynamic value) =>
    RequestArrivalTimePeriodTypeTransformer().decode(value);

  static List<RequestArrivalTimePeriod> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestArrivalTimePeriod>[]
      : json
          .map((value) => RequestArrivalTimePeriod.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestArrivalTimePeriod] to String,
/// and [decode] dynamic data back to [RequestArrivalTimePeriod].
class RequestArrivalTimePeriodTypeTransformer {
  const RequestArrivalTimePeriodTypeTransformer._();

  factory RequestArrivalTimePeriodTypeTransformer() => _instance ??= RequestArrivalTimePeriodTypeTransformer._();

  String encode(RequestArrivalTimePeriod data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestArrivalTimePeriod.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestArrivalTimePeriod decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'weekday_morning': return RequestArrivalTimePeriod.weekdayMorning;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestArrivalTimePeriodTypeTransformer] instance.
  static RequestArrivalTimePeriodTypeTransformer _instance;
}
