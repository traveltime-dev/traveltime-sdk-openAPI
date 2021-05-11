//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_postcode_districts_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_districts.g.dart';

abstract class ResponseTimeFilterPostcodeDistricts implements Built<ResponseTimeFilterPostcodeDistricts, ResponseTimeFilterPostcodeDistrictsBuilder> {

    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodeDistrictsResult> get results;

    ResponseTimeFilterPostcodeDistricts._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeDistrictsBuilder b) => b;

    factory ResponseTimeFilterPostcodeDistricts([void updates(ResponseTimeFilterPostcodeDistrictsBuilder b)]) = _$ResponseTimeFilterPostcodeDistricts;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeDistricts> get serializer => _$ResponseTimeFilterPostcodeDistrictsSerializer();
}

class _$ResponseTimeFilterPostcodeDistrictsSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeDistricts> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeDistricts, _$ResponseTimeFilterPostcodeDistricts];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeDistricts';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeDistricts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'results')
            ..add(serializers.serialize(object.results,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeDistrictsResult)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeDistricts deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeDistrictsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeDistrictsResult)])) as BuiltList<ResponseTimeFilterPostcodeDistrictsResult>);
                    break;
            }
        }
        return result.build();
    }
}

