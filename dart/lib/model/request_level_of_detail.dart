//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestLevelOfDetail {
  /// Returns a new [RequestLevelOfDetail] instance.
  RequestLevelOfDetail({
    @required this.scaleType,
    @required this.level,
  });

  RequestLevelOfDetailScaleTypeEnum scaleType;

  RequestLevelOfDetailLevelEnum level;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestLevelOfDetail &&
     other.scaleType == scaleType &&
     other.level == level;

  @override
  int get hashCode =>
    (scaleType == null ? 0 : scaleType.hashCode) +
    (level == null ? 0 : level.hashCode);

  @override
  String toString() => 'RequestLevelOfDetail[scaleType=$scaleType, level=$level]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scale_type'] = scaleType;
      json[r'level'] = level;
    return json;
  }

  /// Returns a new [RequestLevelOfDetail] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestLevelOfDetail fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestLevelOfDetail(
        scaleType: RequestLevelOfDetailScaleTypeEnum.fromJson(json[r'scale_type']),
        level: RequestLevelOfDetailLevelEnum.fromJson(json[r'level']),
    );

  static List<RequestLevelOfDetail> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestLevelOfDetail>[]
      : json.map((v) => RequestLevelOfDetail.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestLevelOfDetail> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestLevelOfDetail>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestLevelOfDetail.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestLevelOfDetail-objects as value to a dart map
  static Map<String, List<RequestLevelOfDetail>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestLevelOfDetail>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestLevelOfDetail.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class RequestLevelOfDetailScaleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RequestLevelOfDetailScaleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const simple = RequestLevelOfDetailScaleTypeEnum._(r'simple');

  /// List of all possible values in this [enum][RequestLevelOfDetailScaleTypeEnum].
  static const values = <RequestLevelOfDetailScaleTypeEnum>[
    simple,
  ];

  static RequestLevelOfDetailScaleTypeEnum fromJson(dynamic value) =>
    RequestLevelOfDetailScaleTypeEnumTypeTransformer().decode(value);

  static List<RequestLevelOfDetailScaleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestLevelOfDetailScaleTypeEnum>[]
      : json
          .map((value) => RequestLevelOfDetailScaleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestLevelOfDetailScaleTypeEnum] to String,
/// and [decode] dynamic data back to [RequestLevelOfDetailScaleTypeEnum].
class RequestLevelOfDetailScaleTypeEnumTypeTransformer {
  const RequestLevelOfDetailScaleTypeEnumTypeTransformer._();

  factory RequestLevelOfDetailScaleTypeEnumTypeTransformer() => _instance ??= RequestLevelOfDetailScaleTypeEnumTypeTransformer._();

  String encode(RequestLevelOfDetailScaleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestLevelOfDetailScaleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestLevelOfDetailScaleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'simple': return RequestLevelOfDetailScaleTypeEnum.simple;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestLevelOfDetailScaleTypeEnumTypeTransformer] instance.
  static RequestLevelOfDetailScaleTypeEnumTypeTransformer _instance;
}


class RequestLevelOfDetailLevelEnum {
  /// Instantiate a new enum with the provided [value].
  const RequestLevelOfDetailLevelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const lowest = RequestLevelOfDetailLevelEnum._(r'lowest');
  static const low = RequestLevelOfDetailLevelEnum._(r'low');
  static const medium = RequestLevelOfDetailLevelEnum._(r'medium');
  static const high = RequestLevelOfDetailLevelEnum._(r'high');
  static const highest = RequestLevelOfDetailLevelEnum._(r'highest');

  /// List of all possible values in this [enum][RequestLevelOfDetailLevelEnum].
  static const values = <RequestLevelOfDetailLevelEnum>[
    lowest,
    low,
    medium,
    high,
    highest,
  ];

  static RequestLevelOfDetailLevelEnum fromJson(dynamic value) =>
    RequestLevelOfDetailLevelEnumTypeTransformer().decode(value);

  static List<RequestLevelOfDetailLevelEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestLevelOfDetailLevelEnum>[]
      : json
          .map((value) => RequestLevelOfDetailLevelEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RequestLevelOfDetailLevelEnum] to String,
/// and [decode] dynamic data back to [RequestLevelOfDetailLevelEnum].
class RequestLevelOfDetailLevelEnumTypeTransformer {
  const RequestLevelOfDetailLevelEnumTypeTransformer._();

  factory RequestLevelOfDetailLevelEnumTypeTransformer() => _instance ??= RequestLevelOfDetailLevelEnumTypeTransformer._();

  String encode(RequestLevelOfDetailLevelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestLevelOfDetailLevelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestLevelOfDetailLevelEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'lowest': return RequestLevelOfDetailLevelEnum.lowest;
      case r'low': return RequestLevelOfDetailLevelEnum.low;
      case r'medium': return RequestLevelOfDetailLevelEnum.medium;
      case r'high': return RequestLevelOfDetailLevelEnum.high;
      case r'highest': return RequestLevelOfDetailLevelEnum.highest;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RequestLevelOfDetailLevelEnumTypeTransformer] instance.
  static RequestLevelOfDetailLevelEnumTypeTransformer _instance;
}

