//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_routes_properties.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_location.g.dart';

abstract class ResponseRoutesLocation implements Built<ResponseRoutesLocation, ResponseRoutesLocationBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseRoutesProperties> get properties;

    ResponseRoutesLocation._();

    static void _initializeBuilder(ResponseRoutesLocationBuilder b) => b;

    factory ResponseRoutesLocation([void updates(ResponseRoutesLocationBuilder b)]) = _$ResponseRoutesLocation;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoutesLocation> get serializer => _$ResponseRoutesLocationSerializer();
}

class _$ResponseRoutesLocationSerializer implements StructuredSerializer<ResponseRoutesLocation> {

    @override
    final Iterable<Type> types = const [ResponseRoutesLocation, _$ResponseRoutesLocation];
    @override
    final String wireName = r'ResponseRoutesLocation';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoutesLocation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesProperties)])));
        return result;
    }

    @override
    ResponseRoutesLocation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRoutesLocationBuilder();

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
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesProperties)])) as BuiltList<ResponseRoutesProperties>);
                    break;
            }
        }
        return result.build();
    }
}

