//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_postcodes_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes.g.dart';

abstract class ResponseTimeFilterPostcodes implements Built<ResponseTimeFilterPostcodes, ResponseTimeFilterPostcodesBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodesResult> get results;

    ResponseTimeFilterPostcodes._();

    static void _initializeBuilder(ResponseTimeFilterPostcodesBuilder b) => b;

    factory ResponseTimeFilterPostcodes([void updates(ResponseTimeFilterPostcodesBuilder b)]) = _$ResponseTimeFilterPostcodes;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodes> get serializer => _$ResponseTimeFilterPostcodesSerializer();
}

class _$ResponseTimeFilterPostcodesSerializer implements StructuredSerializer<ResponseTimeFilterPostcodes> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodes, _$ResponseTimeFilterPostcodes];
    @override
    final String wireName = r'ResponseTimeFilterPostcodes';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodesResult)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodes deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodesResult)])) as BuiltList<ResponseTimeFilterPostcodesResult>);
                    break;
            }
        }
        return result.build();
    }
}

