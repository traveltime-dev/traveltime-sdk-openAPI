        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast_property.g.dart';

class RequestTimeFilterFastProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: "travel_time")
  static const RequestTimeFilterFastProperty travelTime = _$travelTime;
  @BuiltValueEnumConst(wireName: "fares")
  static const RequestTimeFilterFastProperty fares = _$fares;

  static Serializer<RequestTimeFilterFastProperty> get serializer => _$requestTimeFilterFastPropertySerializer;

  const RequestTimeFilterFastProperty._(String name): super(name);

  static BuiltSet<RequestTimeFilterFastProperty> get values => _$values;
  static RequestTimeFilterFastProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeFilterFastPropertyMixin = Object with _$RequestTimeFilterFastPropertyMixin;

