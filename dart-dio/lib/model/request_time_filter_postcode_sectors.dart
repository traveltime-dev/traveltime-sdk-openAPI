//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcode_sectors_arrival_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_sectors.g.dart';

abstract class RequestTimeFilterPostcodeSectors implements Built<RequestTimeFilterPostcodeSectors, RequestTimeFilterPostcodeSectorsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodeSectorsDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodeSectorsArrivalSearch> get arrivalSearches;

    RequestTimeFilterPostcodeSectors._();

    static void _initializeBuilder(RequestTimeFilterPostcodeSectorsBuilder b) => b;

    factory RequestTimeFilterPostcodeSectors([void updates(RequestTimeFilterPostcodeSectorsBuilder b)]) = _$RequestTimeFilterPostcodeSectors;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterPostcodeSectors> get serializer => _$RequestTimeFilterPostcodeSectorsSerializer();
}

class _$RequestTimeFilterPostcodeSectorsSerializer implements StructuredSerializer<RequestTimeFilterPostcodeSectors> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterPostcodeSectors, _$RequestTimeFilterPostcodeSectors];
    @override
    final String wireName = r'RequestTimeFilterPostcodeSectors';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterPostcodeSectors object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.departureSearches != null) {
            result
                ..add(r'departure_searches')
                ..add(serializers.serialize(object.departureSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeSectorsDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeSectorsArrivalSearch)])));
        }
        return result;
    }

    @override
    RequestTimeFilterPostcodeSectors deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterPostcodeSectorsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'departure_searches':
                    result.departureSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeSectorsDepartureSearch)])) as BuiltList<RequestTimeFilterPostcodeSectorsDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeSectorsArrivalSearch)])) as BuiltList<RequestTimeFilterPostcodeSectorsArrivalSearch>);
                    break;
            }
        }
        return result.build();
    }
}

