//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_departure_search.dart';
import 'package:openapi/model/request_time_filter_postcode_districts_arrival_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_districts.g.dart';

abstract class RequestTimeFilterPostcodeDistricts implements Built<RequestTimeFilterPostcodeDistricts, RequestTimeFilterPostcodeDistrictsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodeDistrictsDepartureSearch> get departureSearches;

    @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodeDistrictsArrivalSearch> get arrivalSearches;

    RequestTimeFilterPostcodeDistricts._();

    static void _initializeBuilder(RequestTimeFilterPostcodeDistrictsBuilder b) => b;

    factory RequestTimeFilterPostcodeDistricts([void updates(RequestTimeFilterPostcodeDistrictsBuilder b)]) = _$RequestTimeFilterPostcodeDistricts;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterPostcodeDistricts> get serializer => _$RequestTimeFilterPostcodeDistrictsSerializer();
}

class _$RequestTimeFilterPostcodeDistrictsSerializer implements StructuredSerializer<RequestTimeFilterPostcodeDistricts> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterPostcodeDistricts, _$RequestTimeFilterPostcodeDistricts];
    @override
    final String wireName = r'RequestTimeFilterPostcodeDistricts';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterPostcodeDistricts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.departureSearches != null) {
            result
                ..add(r'departure_searches')
                ..add(serializers.serialize(object.departureSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeDistrictsDepartureSearch)])));
        }
        if (object.arrivalSearches != null) {
            result
                ..add(r'arrival_searches')
                ..add(serializers.serialize(object.arrivalSearches,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeDistrictsArrivalSearch)])));
        }
        return result;
    }

    @override
    RequestTimeFilterPostcodeDistricts deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterPostcodeDistrictsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'departure_searches':
                    result.departureSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeDistrictsDepartureSearch)])) as BuiltList<RequestTimeFilterPostcodeDistrictsDepartureSearch>);
                    break;
                case r'arrival_searches':
                    result.arrivalSearches.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterPostcodeDistrictsArrivalSearch)])) as BuiltList<RequestTimeFilterPostcodeDistrictsArrivalSearch>);
                    break;
            }
        }
        return result.build();
    }
}

