//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_fares.dart';
import 'package:openapi/model/response_distance_breakdown_item.dart';
import 'package:openapi/model/response_route.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_properties.g.dart';

abstract class ResponseTimeFilterProperties implements Built<ResponseTimeFilterProperties, ResponseTimeFilterPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;

    @nullable
    @BuiltValueField(wireName: r'distance_breakdown')
    BuiltList<ResponseDistanceBreakdownItem> get distanceBreakdown;

    @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFares get fares;

    @nullable
    @BuiltValueField(wireName: r'route')
    ResponseRoute get route;

    ResponseTimeFilterProperties._();

    static void _initializeBuilder(ResponseTimeFilterPropertiesBuilder b) => b;

    factory ResponseTimeFilterProperties([void updates(ResponseTimeFilterPropertiesBuilder b)]) = _$ResponseTimeFilterProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseTimeFilterProperties> get serializer => _$ResponseTimeFilterPropertiesSerializer();
}

class _$ResponseTimeFilterPropertiesSerializer implements StructuredSerializer<ResponseTimeFilterProperties> {

    @override
    final Iterable<Type> types = const [ResponseTimeFilterProperties, _$ResponseTimeFilterProperties];
    @override
    final String wireName = r'ResponseTimeFilterProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseTimeFilterProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.travelTime != null) {
            result
                ..add(r'travel_time')
                ..add(serializers.serialize(object.travelTime,
                    specifiedType: const FullType(int)));
        }
        if (object.distance != null) {
            result
                ..add(r'distance')
                ..add(serializers.serialize(object.distance,
                    specifiedType: const FullType(int)));
        }
        if (object.distanceBreakdown != null) {
            result
                ..add(r'distance_breakdown')
                ..add(serializers.serialize(object.distanceBreakdown,
                    specifiedType: const FullType(BuiltList, [FullType(ResponseDistanceBreakdownItem)])));
        }
        if (object.fares != null) {
            result
                ..add(r'fares')
                ..add(serializers.serialize(object.fares,
                    specifiedType: const FullType(ResponseFares)));
        }
        if (object.route != null) {
            result
                ..add(r'route')
                ..add(serializers.serialize(object.route,
                    specifiedType: const FullType(ResponseRoute)));
        }
        return result;
    }

    @override
    ResponseTimeFilterProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseTimeFilterPropertiesBuilder();

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
                case r'distance':
                    result.distance = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'distance_breakdown':
                    result.distanceBreakdown.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseDistanceBreakdownItem)])) as BuiltList<ResponseDistanceBreakdownItem>);
                    break;
                case r'fares':
                    result.fares.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseFares)) as ResponseFares);
                    break;
                case r'route':
                    result.route.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseRoute)) as ResponseRoute);
                    break;
            }
        }
        return result.build();
    }
}

