//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_postcodes_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode.g.dart';

abstract class ResponseTimeFilterPostcode implements Built<ResponseTimeFilterPostcode, ResponseTimeFilterPostcodeBuilder> {

    @BuiltValueField(wireName: r'code')
    String get code;

    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterPostcodesProperties> get properties;

    ResponseTimeFilterPostcode._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeBuilder b) => b;

    factory ResponseTimeFilterPostcode([void updates(ResponseTimeFilterPostcodeBuilder b)]) = _$ResponseTimeFilterPostcode;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcode> get serializer => _$ResponseTimeFilterPostcodeSerializer();
}

class _$ResponseTimeFilterPostcodeSerializer implements StructuredSerializer<ResponseTimeFilterPostcode> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcode, _$ResponseTimeFilterPostcode];
    @override
    final String wireName = r'ResponseTimeFilterPostcode';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcode object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'code')
            ..add(serializers.serialize(object.code,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodesProperties)])));
        return result;
    }

    @override
    ResponseTimeFilterPostcode deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterPostcodesProperties)])) as BuiltList<ResponseTimeFilterPostcodesProperties>);
                    break;
            }
        }
        return result.build();
    }
}

