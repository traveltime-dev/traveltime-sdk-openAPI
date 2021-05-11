//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_postcode_district.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_districts_result.g.dart';

abstract class ResponseTimeFilterPostcodeDistrictsResult implements Built<ResponseTimeFilterPostcodeDistrictsResult, ResponseTimeFilterPostcodeDistrictsResultBuilder> {

    @BuiltValueField(wireName: r'search_id')
    String get searchId;

    @BuiltValueField(wireName: r'districts')
    BuiltList<ResponseTimeFilterPostcodeDistrict> get districts;

    ResponseTimeFilterPostcodeDistrictsResult._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeDistrictsResultBuilder b) => b;

    factory ResponseTimeFilterPostcodeDistrictsResult([void updates(ResponseTimeFilterPostcodeDistrictsResultBuilder b)]) = _$ResponseTimeFilterPostcodeDistrictsResult;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeDistrictsResult> get serializer => _$ResponseTimeFilterPostcodeDistrictsResultSerializer();
}

class _$ResponseTimeFilterPostcodeDistrictsResultSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeDistrictsResult> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeDistrictsResult, _$ResponseTimeFilterPostcodeDistrictsResult];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeDistrictsResult';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeDistrictsResult object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'search_id')
            ..add(serializers.serialize(object.searchId,
                specifiedType: const FullType(String)));
        result
            ..add(r'districts')
            ..add(serializers.serialize(object.districts,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeDistrict)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeDistrictsResult deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeDistrictsResultBuilder();

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
                case r'districts':
                    result.districts.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodeDistrict)])) as BuiltList<ResponseTimeFilterPostcodeDistrict>);
                    break;
            }
        }
        return result.build();
    }
}

