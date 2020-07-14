        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_transportation_mode.g.dart';

class ResponseTransportationMode extends EnumClass {

  @BuiltValueEnumConst(wireName: "car")
  static const ResponseTransportationMode car = _$car;
  @BuiltValueEnumConst(wireName: "parking")
  static const ResponseTransportationMode parking = _$parking;
  @BuiltValueEnumConst(wireName: "boarding")
  static const ResponseTransportationMode boarding = _$boarding;
  @BuiltValueEnumConst(wireName: "walk")
  static const ResponseTransportationMode walk = _$walk;
  @BuiltValueEnumConst(wireName: "bike")
  static const ResponseTransportationMode bike = _$bike;
  @BuiltValueEnumConst(wireName: "train")
  static const ResponseTransportationMode train = _$train;
  @BuiltValueEnumConst(wireName: "rail_national")
  static const ResponseTransportationMode railNational = _$railNational;
  @BuiltValueEnumConst(wireName: "rail_overground")
  static const ResponseTransportationMode railOverground = _$railOverground;
  @BuiltValueEnumConst(wireName: "rail_underground")
  static const ResponseTransportationMode railUnderground = _$railUnderground;
  @BuiltValueEnumConst(wireName: "rail_dlr")
  static const ResponseTransportationMode railDlr = _$railDlr;
  @BuiltValueEnumConst(wireName: "bus")
  static const ResponseTransportationMode bus = _$bus;
  @BuiltValueEnumConst(wireName: "cable_car")
  static const ResponseTransportationMode cableCar = _$cableCar;
  @BuiltValueEnumConst(wireName: "plane")
  static const ResponseTransportationMode plane = _$plane;
  @BuiltValueEnumConst(wireName: "ferry")
  static const ResponseTransportationMode ferry = _$ferry;
  @BuiltValueEnumConst(wireName: "coach")
  static const ResponseTransportationMode coach = _$coach;

  static Serializer<ResponseTransportationMode> get serializer => _$responseTransportationModeSerializer;

  const ResponseTransportationMode._(String name): super(name);

  static BuiltSet<ResponseTransportationMode> get values => _$values;
  static ResponseTransportationMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ResponseTransportationModeMixin = Object with _$ResponseTransportationModeMixin;

