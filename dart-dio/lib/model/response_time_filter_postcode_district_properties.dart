//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_travel_time_statistics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_district_properties.g.dart';

abstract class ResponseTimeFilterPostcodeDistrictProperties implements Built<ResponseTimeFilterPostcodeDistrictProperties, ResponseTimeFilterPostcodeDistrictPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time_reachable')
    ResponseTravelTimeStatistics get travelTimeReachable;

    @nullable
    @BuiltValueField(wireName: r'travel_time_all')
    ResponseTravelTimeStatistics get travelTimeAll;

    @nullable
    @BuiltValueField(wireName: r'coverage')
    double get coverage;

    ResponseTimeFilterPostcodeDistrictProperties._();

    static void _initializeBuilder(ResponseTimeFilterPostcodeDistrictPropertiesBuilder b) => b;

    factory ResponseTimeFilterPostcodeDistrictProperties([void updates(ResponseTimeFilterPostcodeDistrictPropertiesBuilder b)]) = _$ResponseTimeFilterPostcodeDistrictProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterPostcodeDistrictProperties> get serializer => _$ResponseTimeFilterPostcodeDistrictPropertiesSerializer();
}

class _$ResponseTimeFilterPostcodeDistrictPropertiesSerializer implements StructuredSerializer<ResponseTimeFilterPostcodeDistrictProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterPostcodeDistrictProperties, _$ResponseTimeFilterPostcodeDistrictProperties];
    @override
    final String wireName = r'ResponseTimeFilterPostcodeDistrictProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterPostcodeDistrictProperties object,
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
    ResponseTimeFilterPostcodeDistrictProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPostcodeDistrictPropertiesBuilder();

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

