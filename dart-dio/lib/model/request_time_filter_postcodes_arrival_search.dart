//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_range_full.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_postcodes_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcodes_arrival_search.g.dart';

abstract class RequestTimeFilterPostcodesArrivalSearch implements Built<RequestTimeFilterPostcodesArrivalSearch, RequestTimeFilterPostcodesArrivalSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterPostcodesProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    RequestTimeFilterPostcodesArrivalSearch._();

    static void _initializeBuilder(RequestTimeFilterPostcodesArrivalSearchBuilder b) => b;

    factory RequestTimeFilterPostcodesArrivalSearch([void updates(RequestTimeFilterPostcodesArrivalSearchBuilder b)]) = _$RequestTimeFilterPostcodesArrivalSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterPostcodesArrivalSearch> get serializer => _$RequestTimeFilterPostcodesArrivalSearchSerializer();
}

class _$RequestTimeFilterPostcodesArrivalSearchSerializer implements StructuredSerializer<RequestTimeFilterPostcodesArrivalSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterPostcodesArrivalSearch, _$RequestTimeFilterPostcodesArrivalSearch];
    @override
    final String wireName = r'RequestTimeFilterPostcodesArrivalSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterPostcodesArrivalSearch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'transportation')
            ..add(serializers.serialize(object.transportation,
                specifiedType: const FullType(RequestTransportation)));
        result
            ..add(r'travel_time')
            ..add(serializers.serialize(object.travelTime,
                specifiedType: const FullType(int)));
        result
            ..add(r'arrival_time')
            ..add(serializers.serialize(object.arrivalTime,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesProperty)])));
        if (object.range != null) {
            result
                ..add(r'range')
                ..add(serializers.serialize(object.range,
                    specifiedType: const FullType(RequestRangeFull)));
        }
        return result;
    }

    @override
    RequestTimeFilterPostcodesArrivalSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterPostcodesArrivalSearchBuilder();

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
                case r'transportation':
                    result.transportation.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestTransportation)) as RequestTransportation);
                    break;
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'arrival_time':
                    result.arrivalTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesProperty)])) as BuiltList<RequestTimeFilterPostcodesProperty>);
                    break;
                case r'range':
                    result.range.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestRangeFull)) as RequestRangeFull);
                    break;
            }
        }
        return result.build();
    }
}

