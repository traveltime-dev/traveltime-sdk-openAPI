        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcodes_property.g.dart';

class RequestTimeFilterPostcodesProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: "travel_time")
  static const RequestTimeFilterPostcodesProperty travelTime = _$travelTime;
  @BuiltValueEnumConst(wireName: "distance")
  static const RequestTimeFilterPostcodesProperty distance = _$distance;

  static Serializer<RequestTimeFilterPostcodesProperty> get serializer => _$requestTimeFilterPostcodesPropertySerializer;

  const RequestTimeFilterPostcodesProperty._(String name): super(name);

  static BuiltSet<RequestTimeFilterPostcodesProperty> get values => _$values;
  static RequestTimeFilterPostcodesProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeFilterPostcodesPropertyMixin = Object with _$RequestTimeFilterPostcodesPropertyMixin;

