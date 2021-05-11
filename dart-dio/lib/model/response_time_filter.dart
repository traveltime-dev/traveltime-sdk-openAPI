//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter.g.dart';

abstract class ResponseTimeFilter implements Built<ResponseTimeFilter, ResponseTimeFilterBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterResult> get results;

    ResponseTimeFilter._();

    static void _initializeBuilder(ResponseTimeFilterBuilder b) => b;

    factory ResponseTimeFilter([void updates(ResponseTimeFilterBuilder b)]) = _$ResponseTimeFilter;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilter> get serializer => _$ResponseTimeFilterSerializer();
}

class _$ResponseTimeFilterSerializer implements StructuredSerializer<ResponseTimeFilter> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilter, _$ResponseTimeFilter];
    @override
    final String wireName = r'ResponseTimeFilter';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilter object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterResult)])));
        return result;
    }

    @override
    ResponseTimeFilter deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterResult)])) as BuiltList<ResponseTimeFilterResult>);
                    break;
            }
        }
        return result.build();
    }
}

