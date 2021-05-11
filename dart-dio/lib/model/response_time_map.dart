//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_map_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map.g.dart';

abstract class ResponseTimeMap implements Built<ResponseTimeMap, ResponseTimeMapBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapResult> get results;

    ResponseTimeMap._();

    static void _initializeBuilder(ResponseTimeMapBuilder b) => b;

    factory ResponseTimeMap([void updates(ResponseTimeMapBuilder b)]) = _$ResponseTimeMap;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMap> get serializer => _$ResponseTimeMapSerializer();
}

class _$ResponseTimeMapSerializer implements StructuredSerializer<ResponseTimeMap> {

    @override
    final Iterable<Type> types = const [ResponseTimeMap, _$ResponseTimeMap];
    @override
    final String wireName = r'ResponseTimeMap';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMap object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapResult)])));
        return result;
    }

    @override
    ResponseTimeMap deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapResult)])) as BuiltList<ResponseTimeMapResult>);
                    break;
            }
        }
        return result.build();
    }
}

