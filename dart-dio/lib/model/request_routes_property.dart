        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes_property.g.dart';

class RequestRoutesProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: "travel_time")
  static const RequestRoutesProperty travelTime = _$travelTime;
  @BuiltValueEnumConst(wireName: "distance")
  static const RequestRoutesProperty distance = _$distance;
  @BuiltValueEnumConst(wireName: "fares")
  static const RequestRoutesProperty fares = _$fares;
  @BuiltValueEnumConst(wireName: "route")
  static const RequestRoutesProperty route = _$route;

  static Serializer<RequestRoutesProperty> get serializer => _$requestRoutesPropertySerializer;

  const RequestRoutesProperty._(String name): super(name);

  static BuiltSet<RequestRoutesProperty> get values => _$values;
  static RequestRoutesProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestRoutesPropertyMixin = Object with _$RequestRoutesPropertyMixin;

