//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_fast_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_location.g.dart';

abstract class ResponseTimeFilterFastLocation implements Built<ResponseTimeFilterFastLocation, ResponseTimeFilterFastLocationBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterFastProperties> get properties;

    ResponseTimeFilterFastLocation._();

    static void _initializeBuilder(ResponseTimeFilterFastLocationBuilder b) => b;

    factory ResponseTimeFilterFastLocation([void updates(ResponseTimeFilterFastLocationBuilder b)]) = _$ResponseTimeFilterFastLocation;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterFastLocation> get serializer => _$ResponseTimeFilterFastLocationSerializer();
}

class _$ResponseTimeFilterFastLocationSerializer implements StructuredSerializer<ResponseTimeFilterFastLocation> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterFastLocation, _$ResponseTimeFilterFastLocation];
    @override
    final String wireName = r'ResponseTimeFilterFastLocation';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterFastLocation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastProperties)])));
        return result;
    }

    @override
    ResponseTimeFilterFastLocation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterFastLocationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterFastProperties)])) as BuiltList<ResponseTimeFilterFastProperties>);
                    break;
            }
        }
        return result.build();
    }
}

