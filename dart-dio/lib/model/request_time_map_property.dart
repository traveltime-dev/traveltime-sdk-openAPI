        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map_property.g.dart';

class RequestTimeMapProperty extends EnumClass {

  @BuiltValueEnumConst(wireName: "is_only_walking")
  static const RequestTimeMapProperty isOnlyWalking = _$isOnlyWalking;

  static Serializer<RequestTimeMapProperty> get serializer => _$requestTimeMapPropertySerializer;

  const RequestTimeMapProperty._(String name): super(name);

  static BuiltSet<RequestTimeMapProperty> get values => _$values;
  static RequestTimeMapProperty valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RequestTimeMapPropertyMixin = Object with _$RequestTimeMapPropertyMixin;

