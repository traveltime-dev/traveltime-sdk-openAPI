//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_time_filter_postcode_district_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_district.g.dart';

abstract class ResponseTimeFilterPostcodeDistrict implements Built<ResponseTimeFilterPostcodeDistrict, ResponseTimeFilterPostcodeDistrictBuilder> {

    @BuiltValueField(wireName: r'code')
    String get code;

    @BuiltValueField(wireName: r'properties')
    ResponseTimeFilterPostcodeDistrictProperties get properties;

    ResponseTimeFilterPostcodeDistrict._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeDistrictBuilder b) => b;

    factory ResponseTimeFilterPostcodeDistrict([void updates(ResponseTimeFilterPostcodeDistrictBuilder b)]) = _$ResponseTimeFilterPostcodeDistrict;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeDistrict> get serializer => _$ResponseTimeFilterPostcodeDistrictSerializer();
}

class _$ResponseTimeFilterPostcodeDistrictSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeDistrict> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeDistrict, _$ResponseTimeFilterPostcodeDistrict];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeDistrict';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeDistrict object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseTimeFilterPostcodeDistrictProperties)));
        return result;
    }

    @override
    ResponseTimeFilterPostcodeDistrict deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeDistrictBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'code':
                    result.code = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTimeFilterPostcodeDistrictProperties)) as ResponseTimeFilterPostcodeDistrictProperties);
                    break;
            }
        }
        return result.build();
    }
}

