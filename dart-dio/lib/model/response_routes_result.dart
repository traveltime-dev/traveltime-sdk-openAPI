//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_routes_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_result.g.dart';

abstract class ResponseRoutesResult implements Built<ResponseRoutesResult, ResponseRoutesResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseRoutesLocation> get locations;

    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    ResponseRoutesResult._();

    static void _initializeBuilder(ResponseRoutesResultBuilder b) => b;

    factory ResponseRoutesResult([void updates(ResponseRoutesResultBuilder b)]) = _$ResponseRoutesResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoutesResult> get serializer => _$ResponseRoutesResultSerializer();
}

class _$ResponseRoutesResultSerializer implements StructuredSerializer<ResponseRoutesResult> {

    @override
    final Iterable<Type> types = const [ResponseRoutesResult, _$ResponseRoutesResult];
    @override
    final String wireName = r'ResponseRoutesResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoutesResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesLocation)])));
        result
            ..add(r'unreachable')
            ..add(serializers.serialize(object.unreachable,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    ResponseRoutesResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRoutesResultBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'search_id':
                    result.searchId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'locations':
                    result.locations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesLocation)])) as BuiltList<ResponseRoutesLocation>);
                    break;
                case r'unreachable':
                    result.unreachable.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

