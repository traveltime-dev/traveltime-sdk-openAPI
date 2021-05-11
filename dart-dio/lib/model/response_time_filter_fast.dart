//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_fast_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast.g.dart';

abstract class ResponseTimeFilterFast implements Built<ResponseTimeFilterFast, ResponseTimeFilterFastBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterFastResult> get results;

    ResponseTimeFilterFast._();

    static void _initializeBuilder(ResponseTimeFilterFastBuilder b) => b;

    factory ResponseTimeFilterFast([void updates(ResponseTimeFilterFastBuilder b)]) = _$ResponseTimeFilterFast;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterFast> get serializer => _$ResponseTimeFilterFastSerializer();
}

class _$ResponseTimeFilterFastSerializer implements StructuredSerializer<ResponseTimeFilterFast> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterFast, _$ResponseTimeFilterFast];
    @override
    final String wireName = r'ResponseTimeFilterFast';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterFast object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastResult)])));
        return result;
    }

    @override
    ResponseTimeFilterFast deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterFastBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastResult)])) as BuiltList<ResponseTimeFilterFastResult>);
                    break;
            }
        }
        return result.build();
    }
}

