//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/request_time_filter_postcodes_arrival_search.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_postcodes_departure_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcodes.g.dart';

abstract class RequestTimeFilterPostcodes implements Built<RequestTimeFilterPostcodes, RequestTimeFilterPostcodesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodesDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodesArrivalSearch> get arrivalSearches;

    RequestTimeFilterPostcodes._();

    static void _initializeBuilder(RequestTimeFilterPostcodesBuilder b) => b;

    factory RequestTimeFilterPostcodes([void updates(RequestTimeFilterPostcodesBuilder b)]) = _$RequestTimeFilterPostcodes;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterPostcodes> get serializer => _$RequestTimeFilterPostcodesSerializer();
}

class _$RequestTimeFilterPostcodesSerializer implements StructuredSerializer<RequestTimeFilterPostcodes> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterPostcodes, _$RequestTimeFilterPostcodes];
    @override
    final String wireName = r'RequestTimeFilterPostcodes';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterPostcodes object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.departureSearches != null) {
            result
                ..add(r'departure_searches')
                ..add(serializers.serialize(object.departureSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesArrivalSearch)])));
        }
        return result;
    }

    @override
    RequestTimeFilterPostcodes deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterPostcodesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'departure_searches':
                    result.departureSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesDepartureSearch)])) as BuiltList<RequestTimeFilterPostcodesDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodesArrivalSearch)])) as BuiltList<RequestTimeFilterPostcodesArrivalSearch>);
                    break;
            }
        }
        return result.build();
    }
}

