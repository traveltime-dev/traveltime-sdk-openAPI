//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseFareTicket {
  /// Returns a new [ResponseFareTicket] instance.
  ResponseFareTicket({
    @required this.type,
    @required this.price,
    @required this.currency,
  });

  ResponseFareTicketTypeEnum type;

  double price;

  String currency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseFareTicket &&
     other.type == type &&
     other.price == price &&
     other.currency == currency;

  @override
  int get hashCode =>
    (type == null ? 0 : type.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (currency == null ? 0 : currency.hashCode);

  @override
  String toString() => 'ResponseFareTicket[type=$type, price=$price, currency=$currency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = type;
      json[r'price'] = price;
      json[r'currency'] = currency;
    return json;
  }

  /// Returns a new [ResponseFareTicket] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseFareTicket fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseFareTicket(
        type: ResponseFareTicketTypeEnum.fromJson(json[r'type']),
        price: json[r'price'],
        currency: json[r'currency'],
    );

  static List<ResponseFareTicket> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseFareTicket>[]
      : json.map((v) => ResponseFareTicket.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseFareTicket> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseFareTicket>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseFareTicket.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseFareTicket-objects as value to a dart map
  static Map<String, List<ResponseFareTicket>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseFareTicket>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseFareTicket.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ResponseFareTicketTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ResponseFareTicketTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const single = ResponseFareTicketTypeEnum._(r'single');
  static const week = ResponseFareTicketTypeEnum._(r'week');
  static const month = ResponseFareTicketTypeEnum._(r'month');
  static const year = ResponseFareTicketTypeEnum._(r'year');

  /// List of all possible values in this [enum][ResponseFareTicketTypeEnum].
  static const values = <ResponseFareTicketTypeEnum>[
    single,
    week,
    month,
    year,
  ];

  static ResponseFareTicketTypeEnum fromJson(dynamic value) =>
    ResponseFareTicketTypeEnumTypeTransformer().decode(value);

  static List<ResponseFareTicketTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseFareTicketTypeEnum>[]
      : json
          .map((value) => ResponseFareTicketTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResponseFareTicketTypeEnum] to String,
/// and [decode] dynamic data back to [ResponseFareTicketTypeEnum].
class ResponseFareTicketTypeEnumTypeTransformer {
  const ResponseFareTicketTypeEnumTypeTransformer._();

  factory ResponseFareTicketTypeEnumTypeTransformer() => _instance ??= ResponseFareTicketTypeEnumTypeTransformer._();

  String encode(ResponseFareTicketTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResponseFareTicketTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResponseFareTicketTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'single': return ResponseFareTicketTypeEnum.single;
      case r'week': return ResponseFareTicketTypeEnum.week;
      case r'month': return ResponseFareTicketTypeEnum.month;
      case r'year': return ResponseFareTicketTypeEnum.year;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResponseFareTicketTypeEnumTypeTransformer] instance.
  static ResponseFareTicketTypeEnumTypeTransformer _instance;
}

