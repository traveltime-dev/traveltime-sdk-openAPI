//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_postcode_sector_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sector.g.dart';

abstract class ResponseTimeFilterPostcodeSector implements Built<ResponseTimeFilterPostcodeSector, ResponseTimeFilterPostcodeSectorBuilder> {

    @BuiltValueField(wireName: r'code')
    String get code;

    @BuiltValueField(wireName: r'properties')
    ResponseTimeFilterPostcodeSectorProperties get properties;

    ResponseTimeFilterPostcodeSector._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeSectorBuilder b) => b;

    factory ResponseTimeFilterPostcodeSector([void updates(ResponseTimeFilterPostcodeSectorBuilder b)]) = _$ResponseTimeFilterPostcodeSector;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeSector> get serializer => _$ResponseTimeFilterPostcodeSectorSerializer();
}

class _$ResponseTimeFilterPostcodeSectorSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeSector> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeSector, _$ResponseTimeFilterPostcodeSector];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeSector';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeSector object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseTimeFilterPostcodeSectorProperties)));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeSector deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeSectorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'code':
                    result.code = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTimeFilterPostcodeSectorProperties)) as ResponseTimeFilterPostcodeSectorProperties);
                    break;
            }
        }
        return result.build();
    }
}

