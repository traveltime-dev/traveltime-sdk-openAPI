//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_routes_arrival_search.dart';
import 'package:openapi/model/request_routes_departure_search.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes.g.dart';

abstract class RequestRoutes implements Built<RequestRoutes, RequestRoutesBuilder> {

    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestRoutesDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestRoutesArrivalSearch> get arrivalSearches;

    RequestRoutes._();

    static void _initializeBuilder(RequestRoutesBuilder b) => b;

    factory RequestRoutes([void updates(RequestRoutesBuilder b)]) = _$RequestRoutes;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestRoutes> get serializer => _$RequestRoutesSerializer();
}

class _$RequestRoutesSerializer implements StructuredSerializer<RequestRoutes> {

    @override
    final Iterable<Type> types = const [RequestRoutes, _$RequestRoutes];
    @override
    final String wireName = r'RequestRoutes';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestRoutes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(RequestLocation)])));
        if (object.departureSearches != null) {
            result
                ..add(r'departure_searches')
                ..add(serializers.serialize(object.departureSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestRoutesDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestRoutesArrivalSearch)])));
        }
        return result;
    }

    @override
    RequestRoutes deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestRoutesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'locations':
                    result.locations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestLocation)])) as BuiltList<RequestLocation>);
                    break;
                case r'departure_searches':
                    result.departureSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestRoutesDepartureSearch)])) as BuiltList<RequestRoutesDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestRoutesArrivalSearch)])) as BuiltList<RequestRoutesArrivalSearch>);
                    break;
            }
        }
        return result.build();
    }
}

