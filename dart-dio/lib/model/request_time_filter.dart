//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_departure_search.dart';
import 'package:openapi/model/request_location.dart';
import 'package:openapi/model/request_time_filter_arrival_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter.g.dart';

abstract class RequestTimeFilter implements Built<RequestTimeFilter, RequestTimeFilterBuilder> {

    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterArrivalSearch> get arrivalSearches;

    RequestTimeFilter._();

    static void _initializeBuilder(RequestTimeFilterBuilder b) => b;

    factory RequestTimeFilter([void updates(RequestTimeFilterBuilder b)]) = _$RequestTimeFilter;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilter> get serializer => _$RequestTimeFilterSerializer();
}

class _$RequestTimeFilterSerializer implements StructuredSerializer<RequestTimeFilter> {

    @override
    final Iterable<Type> types = const [RequestTimeFilter, _$RequestTimeFilter];
    @override
    final String wireName = r'RequestTimeFilter';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilter object,
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
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterArrivalSearch)])));
        }
        return result;
    }

    @override
    RequestTimeFilter deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterDepartureSearch)])) as BuiltList<RequestTimeFilterDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterArrivalSearch)])) as BuiltList<RequestTimeFilterArrivalSearch>);
                    break;
            }
        }
        return result.build();
    }
}

