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

part 'request_time_filter_fast_arrival_one_to_many_search.g.dart';

abstract class RequestTimeFilterFastArrivalOneToManySearch implements Built<RequestTimeFilterFastArrivalOneToManySearch, RequestTimeFilterFastArrivalOneToManySearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'departure_location_id')
    String get departureLocationId;

    @BuiltValueField(wireName: r'arrival_location_ids')
    BuiltList<String> get arrivalLocationIds;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportationFast get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'arrival_time_period')
    RequestArrivalTimePeriod get arrivalTimePeriod;
    // enum arrivalTimePeriodEnum {  weekday_morning,  };

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterFastProperty> get properties;

    RequestTimeFilterFastArrivalOneToManySearch._();

    static void _initializeBuilder(RequestTimeFilterFastArrivalOneToManySearchBuilder b) => b;

    factory RequestTimeFilterFastArrivalOneToManySearch([void updates(RequestTimeFilterFastArrivalOneToManySearchBuilder b)]) = _$RequestTimeFilterFastArrivalOneToManySearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterFastArrivalOneToManySearch> get serializer => _$RequestTimeFilterFastArrivalOneToManySearchSerializer();
}

class _$RequestTimeFilterFastArrivalOneToManySearchSerializer implements StructuredSerializer<RequestTimeFilterFastArrivalOneToManySearch> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterFastArrivalOneToManySearch, _$RequestTimeFilterFastArrivalOneToManySearch];
    @override
    final String wireName = r'RequestTimeFilterFastArrivalOneToManySearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterFastArrivalOneToManySearch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'departure_location_id')
            ..add(serializers.serialize(object.departureLocationId,
                specifiedType: const FullType(String)));
        result
            ..add(r'arrival_location_ids')
            ..add(serializers.serialize(object.arrivalLocationIds,
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
    RequestTimeFilterFastArrivalOneToManySearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterFastArrivalOneToManySearchBuilder();

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
                case r'departure_location_id':
                    result.departureLocationId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'arrival_location_ids':
                    result.arrivalLocationIds.replace(serializers.deserialize(value,
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

