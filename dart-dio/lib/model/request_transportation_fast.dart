//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_transportation_fast.g.dart';

abstract class RequestTransportationFast implements Built<RequestTransportationFast, RequestTransportationFastBuilder> {

    @BuiltValueField(wireName: r'type')
    RequestTransportationFastTypeEnum get type;
    // enum typeEnum {  public_transport,  driving,  driving+public_transport,  };

    RequestTransportationFast._();

    static void _initializeBuilder(RequestTransportationFastBuilder b) => b;

    factory RequestTransportationFast([void updates(RequestTransportationFastBuilder b)]) = _$RequestTransportationFast;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTransportationFast> get serializer => _$RequestTransportationFastSerializer();
}

class _$RequestTransportationFastSerializer implements StructuredSerializer<RequestTransportationFast> {

    @override
    final Iterable<Type> types = const [RequestTransportationFast, _$RequestTransportationFast];
    @override
    final String wireName = r'RequestTransportationFast';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTransportationFast object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(RequestTransportationFastTypeEnum)));
        return result;
    }

    @override
    RequestTransportationFast deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTransportationFastBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(RequestTransportationFastTypeEnum)) as RequestTransportationFastTypeEnum;
                    break;
            }
        }
        return result.build();
    }
}

class RequestTransportationFastTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'public_transport')
  static const RequestTransportationFastTypeEnum publicTransport = _$requestTransportationFastTypeEnum_publicTransport;
  @BuiltValueEnumConst(wireName: r'driving')
  static const RequestTransportationFastTypeEnum driving = _$requestTransportationFastTypeEnum_driving;
  @BuiltValueEnumConst(wireName: r'driving+public_transport')
  static const RequestTransportationFastTypeEnum drivingPlusPublicTransport = _$requestTransportationFastTypeEnum_drivingPlusPublicTransport;

  static Serializer<RequestTransportationFastTypeEnum> get serializer => _$requestTransportationFastTypeEnumSerializer;

  const RequestTransportationFastTypeEnum._(String name): super(name);

  static BuiltSet<RequestTransportationFastTypeEnum> get values => _$requestTransportationFastTypeEnumValues;
  static RequestTransportationFastTypeEnum valueOf(String name) => _$requestTransportationFastTypeEnumValueOf(name);
}

