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

part 'request_routes_departure_search.g.dart';

abstract class RequestRoutesDepartureSearch implements Built<RequestRoutesDepartureSearch, RequestRoutesDepartureSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'departure_location_id')
    String get departureLocationId;

    @BuiltValueField(wireName: r'arrival_location_ids')
    BuiltList<String> get arrivalLocationIds;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;

    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestRoutesProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    RequestRoutesDepartureSearch._();

    static void _initializeBuilder(RequestRoutesDepartureSearchBuilder b) => b;

    factory RequestRoutesDepartureSearch([void updates(RequestRoutesDepartureSearchBuilder b)]) = _$RequestRoutesDepartureSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestRoutesDepartureSearch> get serializer => _$RequestRoutesDepartureSearchSerializer();
}

class _$RequestRoutesDepartureSearchSerializer implements StructuredSerializer<RequestRoutesDepartureSearch> {

    @override
    final Iterable<Type> types = const [RequestRoutesDepartureSearch, _$RequestRoutesDepartureSearch];
    @override
    final String wireName = r'RequestRoutesDepartureSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestRoutesDepartureSearch object,
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
            ..add(r'departure_time')
            ..add(serializers.serialize(object.departureTime,
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
    RequestRoutesDepartureSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestRoutesDepartureSearchBuilder();

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
                case r'departure_time':
                    result.departureTime = serializers.deserialize(value,
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

