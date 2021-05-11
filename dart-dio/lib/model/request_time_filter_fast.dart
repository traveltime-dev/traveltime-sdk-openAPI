//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_time_filter_fast_arrival_searches.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast.g.dart';

abstract class RequestTimeFilterFast implements Built<RequestTimeFilterFast, RequestTimeFilterFastBuilder> {

    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;

    @BuiltValueField(wireName: r'arrival_searches')
    RequestTimeFilterFastArrivalSearches get arrivalSearches;

    RequestTimeFilterFast._();

    static void _initializeBuilder(RequestTimeFilterFastBuilder b) => b;

    factory RequestTimeFilterFast([void updates(RequestTimeFilterFastBuilder b)]) = _$RequestTimeFilterFast;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterFast> get serializer => _$RequestTimeFilterFastSerializer();
}

class _$RequestTimeFilterFastSerializer implements StructuredSerializer<RequestTimeFilterFast> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterFast, _$RequestTimeFilterFast];
    @override
    final String wireName = r'RequestTimeFilterFast';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterFast object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(RequestLocation)])));
        result
            ..add(r'arrival_searches')
            ..add(serializers.serialize(object.arrivalSearches,
                specifiedType: const FullType(RequestTimeFilterFastArrivalSearches)));
        return result;
    }

    @override
    RequestTimeFilterFast deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterFastBuilder();

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
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestTimeFilterFastArrivalSearches)) as RequestTimeFilterFastArrivalSearches);
                    break;
            }
        }
        return result.build();
    }
}

