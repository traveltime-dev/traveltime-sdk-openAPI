//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_property.g.dart';

class RequestTimeFilterProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: r'travel_time')
  static const RequestTimeFilterProperty travelTime = _$travelTime;
  @BuiltValueEnumConst(wireName: r'distance')
  static const RequestTimeFilterProperty distance = _$distance;
  @BuiltValueEnumConst(wireName: r'distance_breakdown')
  static const RequestTimeFilterProperty distanceBreakdown = _$distanceBreakdown;
  @BuiltValueEnumConst(wireName: r'fares')
  static const RequestTimeFilterProperty fares = _$fares;
  @BuiltValueEnumConst(wireName: r'route')
  static const RequestTimeFilterProperty route = _$route;

  static Serializer<RequestTimeFilterProperty> get serializer => _$requestTimeFilterPropertySerializer;

  const RequestTimeFilterProperty._(String name): super(name);

  static BuiltSet<RequestTimeFilterProperty> get values => _$values;
  static RequestTimeFilterProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeFilterPropertyMixin = Object with _$RequestTimeFilterPropertyMixin;

