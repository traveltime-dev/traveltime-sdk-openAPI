//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_travel_time_statistics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sector_properties.g.dart';

abstract class ResponseTimeFilterPostcodeSectorProperties implements Built<ResponseTimeFilterPostcodeSectorProperties, ResponseTimeFilterPostcodeSectorPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time_reachable')
    ResponseTravelTimeStatistics get travelTimeReachable;

    @nullable
    @BuiltValueField(wireName: r'travel_time_all')
    ResponseTravelTimeStatistics get travelTimeAll;

    @nullable
    @BuiltValueField(wireName: r'coverage')
    double get coverage;

    ResponseTimeFilterPostcodeSectorProperties._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeSectorPropertiesBuilder b) => b;

    factory ResponseTimeFilterPostcodeSectorProperties([void updates(ResponseTimeFilterPostcodeSectorPropertiesBuilder b)]) = _$ResponseTimeFilterPostcodeSectorProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeSectorProperties> get serializer => _$ResponseTimeFilterPostcodeSectorPropertiesSerializer();
}

class _$ResponseTimeFilterPostcodeSectorPropertiesSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeSectorProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeSectorProperties, _$ResponseTimeFilterPostcodeSectorProperties];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeSectorProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeSectorProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.travelTimeReachable != null) {
            result
                ..add(r'travel_time_reachable')
                ..add(serializers.serialize(object.travelTimeReachable,
                    specifiedType: const FullType(ResponseTravelTimeStatistics)));
        }
        if (object.travelTimeAll != null) {
            result
                ..add(r'travel_time_all')
                ..add(serializers.serialize(object.travelTimeAll,
                    specifiedType: const FullType(ResponseTravelTimeStatistics)));
        }
        if (object.coverage != null) {
            result
                ..add(r'coverage')
                ..add(serializers.serialize(object.coverage,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    ResponseTimeFilterPostcodeSectorProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeSectorPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'travel_time_reachable':
                    result.travelTimeReachable.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTravelTimeStatistics)) as ResponseTravelTimeStatistics);
                    break;
                case r'travel_time_all':
                    result.travelTimeAll.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTravelTimeStatistics)) as ResponseTravelTimeStatistics);
                    break;
                case r'coverage':
                    result.coverage = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

