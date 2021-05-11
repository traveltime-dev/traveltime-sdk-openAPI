//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_properties.g.dart';

abstract class ResponseTimeMapProperties implements Built<ResponseTimeMapProperties, ResponseTimeMapPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'is_only_walking')
    bool get isOnlyWalking;

    ResponseTimeMapProperties._();

    static void _initializeBuilder(ResponseTimeMapPropertiesBuilder b) => b;

    factory ResponseTimeMapProperties([void updates(ResponseTimeMapPropertiesBuilder b)]) = _$ResponseTimeMapProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapProperties> get serializer => _$ResponseTimeMapPropertiesSerializer();
}

class _$ResponseTimeMapPropertiesSerializer implements StructuredSerializer<ResponseTimeMapProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapProperties, _$ResponseTimeMapProperties];
    @override
    final String wireName = r'ResponseTimeMapProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.isOnlyWalking != null) {
            result
                ..add(r'is_only_walking')
                ..add(serializers.serialize(object.isOnlyWalking,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    ResponseTimeMapProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'is_only_walking':
                    result.isOnlyWalking = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

