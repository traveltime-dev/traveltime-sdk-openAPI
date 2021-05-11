//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_postcode.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes_result.g.dart';

abstract class ResponseTimeFilterPostcodesResult implements Built<ResponseTimeFilterPostcodesResult, ResponseTimeFilterPostcodesResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'postcodes')
    BuiltList<ResponseTimeFilterPostcode> get postcodes;

    ResponseTimeFilterPostcodesResult._();

    static void _initializeBuilder(ResponseTimeFilterPostcodesResultBuilder b) => b;

    factory ResponseTimeFilterPostcodesResult([void updates(ResponseTimeFilterPostcodesResultBuilder b)]) = _$ResponseTimeFilterPostcodesResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodesResult> get serializer => _$ResponseTimeFilterPostcodesResultSerializer();
}

class _$ResponseTimeFilterPostcodesResultSerializer implements StructuredSerializer<ResponseTimeFilterPostcodesResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodesResult, _$ResponseTimeFilterPostcodesResult];
    @override
    final String wireName = r'ResponseTimeFilterPostcodesResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodesResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'postcodes')
            ..add(serializers.serialize(object.postcodes,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcode)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodesResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodesResultBuilder();

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
                case r'postcodes':
                    result.postcodes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcode)])) as BuiltList<ResponseTimeFilterPostcode>);
                    break;
            }
        }
        return result.build();
    }
}

