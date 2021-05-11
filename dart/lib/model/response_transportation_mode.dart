//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ResponseTransportationMode {
  /// Instantiate a new enum with the provided [value].
  const ResponseTransportationMode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const car = ResponseTransportationMode._(r'car');
  static const parking = ResponseTransportationMode._(r'parking');
  static const boarding = ResponseTransportationMode._(r'boarding');
  static const walk = ResponseTransportationMode._(r'walk');
  static const bike = ResponseTransportationMode._(r'bike');
  static const train = ResponseTransportationMode._(r'train');
  static const railNational = ResponseTransportationMode._(r'rail_national');
  static const railOverground = ResponseTransportationMode._(r'rail_overground');
  static const railUnderground = ResponseTransportationMode._(r'rail_underground');
  static const railDlr = ResponseTransportationMode._(r'rail_dlr');
  static const bus = ResponseTransportationMode._(r'bus');
  static const cableCar = ResponseTransportationMode._(r'cable_car');
  static const plane = ResponseTransportationMode._(r'plane');
  static const ferry = ResponseTransportationMode._(r'ferry');
  static const coach = ResponseTransportationMode._(r'coach');

  /// List of all possible values in this [enum][ResponseTransportationMode].
  static const values = <ResponseTransportationMode>[
    car,
    parking,
    boarding,
    walk,
    bike,
    train,
    railNational,
    railOverground,
    railUnderground,
    railDlr,
    bus,
    cableCar,
    plane,
    ferry,
    coach,
  ];

  static ResponseTransportationMode fromJson(dynamic value) =>
    ResponseTransportationModeTypeTransformer().decode(value);

  static List<ResponseTransportationMode> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseTransportationMode>[]
      : json
          .map((value) => ResponseTransportationMode.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ResponseTransportationMode] to String,
/// and [decode] dynamic data back to [ResponseTransportationMode].
class ResponseTransportationModeTypeTransformer {
  const ResponseTransportationModeTypeTransformer._();

  factory ResponseTransportationModeTypeTransformer() => _instance ??= ResponseTransportationModeTypeTransformer._();

  String encode(ResponseTransportationMode data) => data.value;

  /// Decodes a [dynamic value][data] to a ResponseTransportationMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResponseTransportationMode decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'car': return ResponseTransportationMode.car;
      case r'parking': return ResponseTransportationMode.parking;
      case r'boarding': return ResponseTransportationMode.boarding;
      case r'walk': return ResponseTransportationMode.walk;
      case r'bike': return ResponseTransportationMode.bike;
      case r'train': return ResponseTransportationMode.train;
      case r'rail_national': return ResponseTransportationMode.railNational;
      case r'rail_overground': return ResponseTransportationMode.railOverground;
      case r'rail_underground': return ResponseTransportationMode.railUnderground;
      case r'rail_dlr': return ResponseTransportationMode.railDlr;
      case r'bus': return ResponseTransportationMode.bus;
      case r'cable_car': return ResponseTransportationMode.cableCar;
      case r'plane': return ResponseTransportationMode.plane;
      case r'ferry': return ResponseTransportationMode.ferry;
      case r'coach': return ResponseTransportationMode.coach;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ResponseTransportationModeTypeTransformer] instance.
  static ResponseTransportationModeTypeTransformer _instance;
}
