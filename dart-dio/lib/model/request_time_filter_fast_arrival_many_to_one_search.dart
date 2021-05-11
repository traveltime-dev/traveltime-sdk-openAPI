//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_transportation_fast.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_fast_property.dart';
import 'package:openapi/model/request_arrival_time_period.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast_arrival_many_to_one_search.g.dart';

abstract class RequestTimeFilterFastArrivalManyToOneSearch implements Built<RequestTimeFilterFastArrivalManyToOneSearch, RequestTimeFilterFastArrivalManyToOneSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'arrival_location_id')
    String get arrivalLocationId;

    @BuiltValueField(wireName: r'departure_location_ids')
    BuiltList<String> get departureLocationIds;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportationFast get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'arrival_time_period')
    RequestArrivalTimePeriod get arrivalTimePeriod;
    // enum arrivalTimePeriodEnum {  weekday_morning,  };

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterFastProperty> get properties;

    RequestTimeFilterFastArrivalManyToOneSearch._();

    static void _initializeBuilder(RequestTimeFilterFastArrivalManyToOneSearchBuilder b) => b;

    factory RequestTimeFilterFastArrivalManyToOneSearch([void updates(RequestTimeFilterFastArrivalManyToOneSearchBuilder b)]) = _$RequestTimeFilterFastArrivalManyToOneSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterFastArrivalManyToOneSearch> get serializer => _$RequestTimeFilterFastArrivalManyToOneSearchSerializer();
}

class _$RequestTimeFilterFastArrivalManyToOneSearchSerializer implements StructuredSerializer<RequestTimeFilterFastArrivalManyToOneSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterFastArrivalManyToOneSearch, _$RequestTimeFilterFastArrivalManyToOneSearch];
    @override
    final String wireName = r'RequestTimeFilterFastArrivalManyToOneSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterFastArrivalManyToOneSearch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'arrival_location_id')
            ..add(serializers.serialize(object.arrivalLocationId,
                specifiedType: const FullType(String)));
        result
            ..add(r'departure_location_ids')
            ..add(serializers.serialize(object.departureLocationIds,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'transportation')
            ..add(serializers.serialize(object.transportation,
                specifiedType: const FullType(RequestTransportationFast)));
        result
            ..add(r'travel_time')
            ..add(serializers.serialize(object.travelTime,
                specifiedType: const FullType(int)));
        result
            ..add(r'arrival_time_period')
            ..add(serializers.serialize(object.arrivalTimePeriod,
                specifiedType: const FullType(RequestArrivalTimePeriod)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastProperty)])));
        return result;
    }

    @override
    RequestTimeFilterFastArrivalManyToOneSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterFastArrivalManyToOneSearchBuilder();

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
                case r'arrival_location_id':
                    result.arrivalLocationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'departure_location_ids':
                    result.departureLocationIds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'transportation':
                    result.transportation.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestTransportationFast)) as RequestTransportationFast);
                    break;
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'arrival_time_period':
                    result.arrivalTimePeriod = serializers.deserialize(value,
                        specifiedType: const FullType(RequestArrivalTimePeriod)) as RequestArrivalTimePeriod;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastProperty)])) as BuiltList<RequestTimeFilterFastProperty>);
                    break;
            }
        }
        return result.build();
    }
}

