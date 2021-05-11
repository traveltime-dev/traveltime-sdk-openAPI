//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestTransportationFast {
  /// Returns a new [RequestTransportationFast] instance.
  RequestTransportationFast({
    @required this.type,
  });

  RequestTransportationFastTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestTransportationFast &&
     other.type == type;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode);

  @override
  String toString() => 'RequestTransportationFast[type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
    return json;
  }

  /// Returns a new [RequestTransportationFast] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestTransportationFast fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestTransportationFast(
        type: RequestTransportationFastTypeEnum.fromJson(json[r'type']),
    );

  static List<RequestTransportationFast> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTransportationFast>[]
      : json.map((v) => RequestTransportationFast.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestTransportationFast> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestTransportationFast>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestTransportationFast.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestTransportationFast-objects as value to a dart map
  static Map<String, List<RequestTransportationFast>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestTransportationFast>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestTransportationFast.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class RequestTransportationFastTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RequestTransportationFastTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const publicTransport = RequestTransportationFastTypeEnum._(r'public_transport');
  static const driving = RequestTransportationFastTypeEnum._(r'driving');
  static const drivingPlusPublicTransport = RequestTransportationFastTypeEnum._(r'driving+public_transport');

  /// List of all possible values in this [enum][RequestTransportationFastTypeEnum].
  static const values = <RequestTransportationFastTypeEnum>[
    publicTransport,
    driving,
    drivingPlusPublicTransport,
  ];

  static RequestTransportationFastTypeEnum fromJson(dynamic value) =>
    RequestTransportationFastTypeEnumTypeTransformer().decode(value);

  static List<RequestTransportationFastTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestTransportationFastTypeEnum>[]
      : json
          .map((value) => RequestTransportationFastTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestTransportationFastTypeEnum] to String,
/// and [decode] dynamic data back to [RequestTransportationFastTypeEnum].
class RequestTransportationFastTypeEnumTypeTransformer {
  const RequestTransportationFastTypeEnumTypeTransformer._();

  factory RequestTransportationFastTypeEnumTypeTransformer() => _instance ??= RequestTransportationFastTypeEnumTypeTransformer._();

  String encode(RequestTransportationFastTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestTransportationFastTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestTransportationFastTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'public_transport': return RequestTransportationFastTypeEnum.publicTransport;
      case r'driving': return RequestTransportationFastTypeEnum.driving;
      case r'driving+public_transport': return RequestTransportationFastTypeEnum.drivingPlusPublicTransport;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestTransportationFastTypeEnumTypeTransformer] instance.
  static RequestTransportationFastTypeEnumTypeTransformer _instance;
}

