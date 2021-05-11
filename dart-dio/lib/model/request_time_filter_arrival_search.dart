//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_range_full.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_arrival_search.g.dart';

abstract class RequestTimeFilterArrivalSearch implements Built<RequestTimeFilterArrivalSearch, RequestTimeFilterArrivalSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'departure_location_ids')
    BuiltList<String> get departureLocationIds;

    @BuiltValueField(wireName: r'arrival_location_id')
    String get arrivalLocationId;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    RequestTimeFilterArrivalSearch._();

    static void _initializeBuilder(RequestTimeFilterArrivalSearchBuilder b) => b;

    factory RequestTimeFilterArrivalSearch([void updates(RequestTimeFilterArrivalSearchBuilder b)]) = _$RequestTimeFilterArrivalSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterArrivalSearch> get serializer => _$RequestTimeFilterArrivalSearchSerializer();
}

class _$RequestTimeFilterArrivalSearchSerializer implements StructuredSerializer<RequestTimeFilterArrivalSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterArrivalSearch, _$RequestTimeFilterArrivalSearch];
    @override
    final String wireName = r'RequestTimeFilterArrivalSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterArrivalSearch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'departure_location_ids')
            ..add(serializers.serialize(object.departureLocationIds,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'arrival_location_id')
            ..add(serializers.serialize(object.arrivalLocationId,
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
                specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterProperty)])));
        if (object.range != null) {
            result
                ..add(r'range')
                ..add(serializers.serialize(object.range,
                    specifiedType: const FullType(RequestRangeFull)));
        }
        return result;
    }

    @override
    RequestTimeFilterArrivalSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterArrivalSearchBuilder();

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
                case r'departure_location_ids':
                    result.departureLocationIds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'arrival_location_id':
                    result.arrivalLocationId = serializers.deserialize(value,
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
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterProperty)])) as BuiltList<RequestTimeFilterProperty>);
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

