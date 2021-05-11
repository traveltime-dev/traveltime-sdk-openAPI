//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_travel_time_statistics.g.dart';

abstract class ResponseTravelTimeStatistics implements Built<ResponseTravelTimeStatistics, ResponseTravelTimeStatisticsBuilder> {

    @BuiltValueField(wireName: r'min')
    int get min;

    @BuiltValueField(wireName: r'max')
    int get max;

    @BuiltValueField(wireName: r'mean')
    int get mean;

    @BuiltValueField(wireName: r'median')
    int get median;

    ResponseTravelTimeStatistics._();

    static void _initializeBuilder(ResponseTravelTimeStatisticsBuilder b) => b;

    factory ResponseTravelTimeStatistics([void updates(ResponseTravelTimeStatisticsBuilder b)]) = _$ResponseTravelTimeStatistics;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTravelTimeStatistics> get serializer => _$ResponseTravelTimeStatisticsSerializer();
}

class _$ResponseTravelTimeStatisticsSerializer implements StructuredSerializer<ResponseTravelTimeStatistics> {

    @override
    final Iterable<Type> types = const [ResponseTravelTimeStatistics, _$ResponseTravelTimeStatistics];
    @override
    final String wireName = r'ResponseTravelTimeStatistics';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTravelTimeStatistics object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'min')
            ..add(serializers.serialize(object.min,
                specifiedType: const FullType(int)));
        result
            ..add(r'max')
            ..add(serializers.serialize(object.max,
                specifiedType: const FullType(int)));
        result
            ..add(r'mean')
            ..add(serializers.serialize(object.mean,
                specifiedType: const FullType(int)));
        result
            ..add(r'median')
            ..add(serializers.serialize(object.median,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    ResponseTravelTimeStatistics deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTravelTimeStatisticsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'min':
                    result.min = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'max':
                    result.max = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'mean':
                    result.mean = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'median':
                    result.median = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

