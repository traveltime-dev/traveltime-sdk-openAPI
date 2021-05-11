//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_time_map_departure_search.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_map_arrival_search.dart';
import 'package:openapi/model/request_union_on_intersection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map.g.dart';

abstract class RequestTimeMap implements Built<RequestTimeMap, RequestTimeMapBuilder> {

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeMapDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeMapArrivalSearch> get arrivalSearches;

    @nullable
    @BuiltValueField(wireName: r'unions')
    BuiltList<RequestUnionOnIntersection> get unions;

    @nullable
    @BuiltValueField(wireName: r'intersections')
    BuiltList<RequestUnionOnIntersection> get intersections;

    RequestTimeMap._();

    static void _initializeBuilder(RequestTimeMapBuilder b) => b;

    factory RequestTimeMap([void updates(RequestTimeMapBuilder b)]) = _$RequestTimeMap;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeMap> get serializer => _$RequestTimeMapSerializer();
}

class _$RequestTimeMapSerializer implements StructuredSerializer<RequestTimeMap> {

    @override
    final Iterable<Type> types = const [RequestTimeMap, _$RequestTimeMap];
    @override
    final String wireName = r'RequestTimeMap';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeMap object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.departureSearches != null) {
            result
                ..add(r'departure_searches')
                ..add(serializers.serialize(object.departureSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapArrivalSearch)])));
        }
        if (object.unions != null) {
            result
                ..add(r'unions')
                ..add(serializers.serialize(object.unions,
                    specifiedType: const FullType(BuiltList, [FullType(RequestUnionOnIntersection)])));
        }
        if (object.intersections != null) {
            result
                ..add(r'intersections')
                ..add(serializers.serialize(object.intersections,
                    specifiedType: const FullType(BuiltList, [FullType(RequestUnionOnIntersection)])));
        }
        return result;
    }

    @override
    RequestTimeMap deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeMapBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'departure_searches':
                    result.departureSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapDepartureSearch)])) as BuiltList<RequestTimeMapDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapArrivalSearch)])) as BuiltList<RequestTimeMapArrivalSearch>);
                    break;
                case r'unions':
                    result.unions.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestUnionOnIntersection)])) as BuiltList<RequestUnionOnIntersection>);
                    break;
                case r'intersections':
                    result.intersections.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestUnionOnIntersection)])) as BuiltList<RequestUnionOnIntersection>);
                    break;
            }
        }
        return result.build();
    }
}

