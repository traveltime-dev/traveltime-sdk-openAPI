//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_map_wkt_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_wkt.g.dart';

abstract class ResponseTimeMapWkt implements Built<ResponseTimeMapWkt, ResponseTimeMapWktBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapWktResult> get results;

    ResponseTimeMapWkt._();

    static void _initializeBuilder(ResponseTimeMapWktBuilder b) => b;

    factory ResponseTimeMapWkt([void updates(ResponseTimeMapWktBuilder b)]) = _$ResponseTimeMapWkt;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeMapWkt> get serializer => _$ResponseTimeMapWktSerializer();
}

class _$ResponseTimeMapWktSerializer implements StructuredSerializer<ResponseTimeMapWkt> {

    @override
    final Iterable<Type> types = const [ResponseTimeMapWkt, _$ResponseTimeMapWkt];
    @override
    final String wireName = r'ResponseTimeMapWkt';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeMapWkt object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapWktResult)])));
        return result;
    }

    @override
    ResponseTimeMapWkt deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeMapWktBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeMapWktResult)])) as BuiltList<ResponseTimeMapWktResult>);
                    break;
            }
        }
        return result.build();
    }
}

