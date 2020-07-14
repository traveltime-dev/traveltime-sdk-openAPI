        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_arrival_time_period.g.dart';

class RequestArrivalTimePeriod extends EnumClass {

  @BuiltValueEnumConst(wireName: "weekday_morning")
  static const RequestArrivalTimePeriod weekdayMorning = _$weekdayMorning;

  static Serializer<RequestArrivalTimePeriod> get serializer => _$requestArrivalTimePeriodSerializer;

  const RequestArrivalTimePeriod._(String name): super(name);

  static BuiltSet<RequestArrivalTimePeriod> get values => _$values;
  static RequestArrivalTimePeriod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestArrivalTimePeriodMixin = Object with _$RequestArrivalTimePeriodMixin;

