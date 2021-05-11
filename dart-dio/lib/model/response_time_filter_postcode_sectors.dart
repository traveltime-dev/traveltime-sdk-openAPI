//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_postcode_sectors_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sectors.g.dart';

abstract class ResponseTimeFilterPostcodeSectors implements Built<ResponseTimeFilterPostcodeSectors, ResponseTimeFilterPostcodeSectorsBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodeSectorsResult> get results;

    ResponseTimeFilterPostcodeSectors._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeSectorsBuilder b) => b;

    factory ResponseTimeFilterPostcodeSectors([void updates(ResponseTimeFilterPostcodeSectorsBuilder b)]) = _$ResponseTimeFilterPostcodeSectors;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeSectors> get serializer => _$ResponseTimeFilterPostcodeSectorsSerializer();
}

class _$ResponseTimeFilterPostcodeSectorsSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeSectors> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeSectors, _$ResponseTimeFilterPostcodeSectors];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeSectors';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeSectors object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeSectorsResult)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeSectors deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeSectorsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeSectorsResult)])) as BuiltList<ResponseTimeFilterPostcodeSectorsResult>);
                    break;
            }
        }
        return result.build();
    }
}

