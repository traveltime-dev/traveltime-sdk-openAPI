//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_range_full.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_routes_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes_arrival_search.g.dart';

abstract class RequestRoutesArrivalSearch implements Built<RequestRoutesArrivalSearch, RequestRoutesArrivalSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'departure_location_ids')
    BuiltList<String> get departureLocationIds;

    @BuiltValueField(wireName: r'arrival_location_id')
    String get arrivalLocationId;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestRoutesProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    RequestRoutesArrivalSearch._();

    static void _initializeBuilder(RequestRoutesArrivalSearchBuilder b) => b;

    factory RequestRoutesArrivalSearch([void updates(RequestRoutesArrivalSearchBuilder b)]) = _$RequestRoutesArrivalSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestRoutesArrivalSearch> get serializer => _$RequestRoutesArrivalSearchSerializer();
}

class _$RequestRoutesArrivalSearchSerializer implements StructuredSerializer<RequestRoutesArrivalSearch> {

    @override
    final Iterable<Type> types = const [RequestRoutesArrivalSearch, _$RequestRoutesArrivalSearch];
    @override
    final String wireName = r'RequestRoutesArrivalSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestRoutesArrivalSearch object,
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
            ..add(r'arrival_time')
            ..add(serializers.serialize(object.arrivalTime,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(BuiltList, [FullType(RequestRoutesProperty)])));
        if (object.range != null) {
            result
                ..add(r'range')
                ..add(serializers.serialize(object.range,
                    specifiedType: const FullType(RequestRangeFull)));
        }
        return result;
    }

    @override
    RequestRoutesArrivalSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestRoutesArrivalSearchBuilder();

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
                case r'arrival_time':
                    result.arrivalTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestRoutesProperty)])) as BuiltList<RequestRoutesProperty>);
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

