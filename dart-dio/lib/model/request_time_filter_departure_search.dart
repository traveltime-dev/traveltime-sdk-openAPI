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

part 'request_time_filter_departure_search.g.dart';

abstract class RequestTimeFilterDepartureSearch implements Built<RequestTimeFilterDepartureSearch, RequestTimeFilterDepartureSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'departure_location_id')
    String get departureLocationId;

    @BuiltValueField(wireName: r'arrival_location_ids')
    BuiltList<String> get arrivalLocationIds;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    RequestTimeFilterDepartureSearch._();

    static void _initializeBuilder(RequestTimeFilterDepartureSearchBuilder b) => b;

    factory RequestTimeFilterDepartureSearch([void updates(RequestTimeFilterDepartureSearchBuilder b)]) = _$RequestTimeFilterDepartureSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterDepartureSearch> get serializer => _$RequestTimeFilterDepartureSearchSerializer();
}

class _$RequestTimeFilterDepartureSearchSerializer implements StructuredSerializer<RequestTimeFilterDepartureSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterDepartureSearch, _$RequestTimeFilterDepartureSearch];
    @override
    final String wireName = r'RequestTimeFilterDepartureSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterDepartureSearch object,
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
                specifiedType: const FullType(RequestTransportation)));
        result
            ..add(r'travel_time')
            ..add(serializers.serialize(object.travelTime,
                specifiedType: const FullType(int)));
        result
            ..add(r'departure_time')
            ..add(serializers.serialize(object.departureTime,
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
    RequestTimeFilterDepartureSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterDepartureSearchBuilder();

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
                        specifiedType: const FullType(RequestTransportation)) as RequestTransportation);
                    break;
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'departure_time':
                    result.departureTime = serializers.deserialize(value,
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

