//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_fares_fast.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_properties.g.dart';

abstract class ResponseTimeFilterFastProperties implements Built<ResponseTimeFilterFastProperties, ResponseTimeFilterFastPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFaresFast get fares;

    ResponseTimeFilterFastProperties._();

    static void _initializeBuilder(ResponseTimeFilterFastPropertiesBuilder b) => b;

    factory ResponseTimeFilterFastProperties([void updates(ResponseTimeFilterFastPropertiesBuilder b)]) = _$ResponseTimeFilterFastProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterFastProperties> get serializer => _$ResponseTimeFilterFastPropertiesSerializer();
}

class _$ResponseTimeFilterFastPropertiesSerializer implements StructuredSerializer<ResponseTimeFilterFastProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterFastProperties, _$ResponseTimeFilterFastProperties];
    @override
    final String wireName = r'ResponseTimeFilterFastProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterFastProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.travelTime != null) {
            result
                ..add(r'travel_time')
                ..add(serializers.serialize(object.travelTime,
                    specifiedType: const FullType(int)));
        }
        if (object.fares != null) {
            result
                ..add(r'fares')
                ..add(serializers.serialize(object.fares,
                    specifiedType: const FullType(ResponseFaresFast)));
        }
        return result;
    }

    @override
    ResponseTimeFilterFastProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterFastPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'fares':
                    result.fares.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseFaresFast)) as ResponseFaresFast);
                    break;
            }
        }
        return result.build();
    }
}

