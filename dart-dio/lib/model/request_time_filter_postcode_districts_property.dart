//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_districts_property.g.dart';

class RequestTimeFilterPostcodeDistrictsProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: r'travel_time_reachable')
  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeReachable = _$travelTimeReachable;
  @BuiltValueEnumConst(wireName: r'travel_time_all')
  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeAll = _$travelTimeAll;
  @BuiltValueEnumConst(wireName: r'coverage')
  static const RequestTimeFilterPostcodeDistrictsProperty coverage = _$coverage;

  static Serializer<RequestTimeFilterPostcodeDistrictsProperty> get serializer => _$requestTimeFilterPostcodeDistrictsPropertySerializer;

  const RequestTimeFilterPostcodeDistrictsProperty._(String name): super(name);

  static BuiltSet<RequestTimeFilterPostcodeDistrictsProperty> get values => _$values;
  static RequestTimeFilterPostcodeDistrictsProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeFilterPostcodeDistrictsPropertyMixin = Object with _$RequestTimeFilterPostcodeDistrictsPropertyMixin;

