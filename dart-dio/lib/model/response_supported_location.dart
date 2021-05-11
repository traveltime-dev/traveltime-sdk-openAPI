//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_supported_location.g.dart';

abstract class ResponseSupportedLocation implements Built<ResponseSupportedLocation, ResponseSupportedLocationBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'map_name')
    String get mapName;

    ResponseSupportedLocation._();

    static void _initializeBuilder(ResponseSupportedLocationBuilder b) => b;

    factory ResponseSupportedLocation([void updates(ResponseSupportedLocationBuilder b)]) = _$ResponseSupportedLocation;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseSupportedLocation> get serializer => _$ResponseSupportedLocationSerializer();
}

class _$ResponseSupportedLocationSerializer implements StructuredSerializer<ResponseSupportedLocation> {

    @override
    final Iterable<Type> types = const [ResponseSupportedLocation, _$ResponseSupportedLocation];
    @override
    final String wireName = r'ResponseSupportedLocation';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseSupportedLocation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'map_name')
            ..add(serializers.serialize(object.mapName,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ResponseSupportedLocation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseSupportedLocationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'map_name':
                    result.mapName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

