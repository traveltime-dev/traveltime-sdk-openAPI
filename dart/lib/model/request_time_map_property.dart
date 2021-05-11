//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RequestTimeMapProperty {
  /// Instantiate a new enum with the provided [value].
  const RequestTimeMapProperty._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const isOnlyWalking = RequestTimeMapProperty._(r'is_only_walking');

  /// List of all possible values in this [enum][RequestTimeMapProperty].
  static const values = <RequestTimeMapProperty>[
    isOnlyWalking,
  ];

  static RequestTimeMapProperty fromJson(dynamic value) =>
    RequestTimeMapPropertyTypeTransformer().decode(value);

  static List<RequestTimeMapProperty> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTimeMapProperty>[]
      : json
          .map((value) => RequestTimeMapProperty.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTimeMapProperty] to String,
/// and [decode] dynamic data back to [RequestTimeMapProperty].
class RequestTimeMapPropertyTypeTransformer {
  const RequestTimeMapPropertyTypeTransformer._();

  factory RequestTimeMapPropertyTypeTransformer() => _instance ??= RequestTimeMapPropertyTypeTransformer._();

  String encode(RequestTimeMapProperty data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTimeMapProperty.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTimeMapProperty decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'is_only_walking': return RequestTimeMapProperty.isOnlyWalking;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTimeMapPropertyTypeTransformer] instance.
  static RequestTimeMapPropertyTypeTransformer _instance;
}
