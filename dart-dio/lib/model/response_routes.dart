//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_routes_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes.g.dart';

abstract class ResponseRoutes implements Built<ResponseRoutes, ResponseRoutesBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseRoutesResult> get results;

    ResponseRoutes._();

    static void _initializeBuilder(ResponseRoutesBuilder b) => b;

    factory ResponseRoutes([void updates(ResponseRoutesBuilder b)]) = _$ResponseRoutes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoutes> get serializer => _$ResponseRoutesSerializer();
}

class _$ResponseRoutesSerializer implements StructuredSerializer<ResponseRoutes> {

    @override
    final Iterable<Type> types = const [ResponseRoutes, _$ResponseRoutes];
    @override
    final String wireName = r'ResponseRoutes';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoutes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesResult)])));
        return result;
    }

    @override
    ResponseRoutes deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRoutesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseRoutesResult)])) as BuiltList<ResponseRoutesResult>);
                    break;
            }
        }
        return result.build();
    }
}

