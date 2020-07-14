        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_sectors_property.g.dart';

class RequestTimeFilterPostcodeSectorsProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: "travel_time_reachable")
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeReachable = _$travelTimeReachable;
  @BuiltValueEnumConst(wireName: "travel_time_all")
  static const RequestTimeFilterPostcodeSectorsProperty travelTimeAll = _$travelTimeAll;
  @BuiltValueEnumConst(wireName: "coverage")
  static const RequestTimeFilterPostcodeSectorsProperty coverage = _$coverage;

  static Serializer<RequestTimeFilterPostcodeSectorsProperty> get serializer => _$requestTimeFilterPostcodeSectorsPropertySerializer;

  const RequestTimeFilterPostcodeSectorsProperty._(String name): super(name);

  static BuiltSet<RequestTimeFilterPostcodeSectorsProperty> get values => _$values;
  static RequestTimeFilterPostcodeSectorsProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeFilterPostcodeSectorsPropertyMixin = Object with _$RequestTimeFilterPostcodeSectorsPropertyMixin;

