//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_time_filter_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_location.g.dart';

abstract class ResponseTimeFilterLocation implements Built<ResponseTimeFilterLocation, ResponseTimeFilterLocationBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterProperties> get properties;

    ResponseTimeFilterLocation._();

    static void _initializeBuilder(ResponseTimeFilterLocationBuilder b) => b;

    factory ResponseTimeFilterLocation([void updates(ResponseTimeFilterLocationBuilder b)]) = _$ResponseTimeFilterLocation;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterLocation> get serializer => _$ResponseTimeFilterLocationSerializer();
}

class _$ResponseTimeFilterLocationSerializer implements StructuredSerializer<ResponseTimeFilterLocation> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterLocation, _$ResponseTimeFilterLocation];
    @override
    final String wireName = r'ResponseTimeFilterLocation';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterLocation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterProperties)])));
        return result;
    }

    @override
    ResponseTimeFilterLocation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterLocationBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTimeFilterProperties)])) as BuiltList<ResponseTimeFilterProperties>);
                    break;
            }
        }
        return result.build();
    }
}

