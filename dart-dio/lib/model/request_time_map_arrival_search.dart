//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/coords.dart';
import 'package:openapi/model/request_level_of_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_range_no_max_results.dart';
import 'package:openapi/model/request_time_map_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map_arrival_search.g.dart';

abstract class RequestTimeMapArrivalSearch implements Built<RequestTimeMapArrivalSearch, RequestTimeMapArrivalSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'coords')
    Coords get coords;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;

    @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeMapProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeNoMaxResults get range;

    @nullable
    @BuiltValueField(wireName: r'level_of_detail')
    RequestLevelOfDetail get levelOfDetail;

    RequestTimeMapArrivalSearch._();

    static void _initializeBuilder(RequestTimeMapArrivalSearchBuilder b) => b;

    factory RequestTimeMapArrivalSearch([void updates(RequestTimeMapArrivalSearchBuilder b)]) = _$RequestTimeMapArrivalSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeMapArrivalSearch> get serializer => _$RequestTimeMapArrivalSearchSerializer();
}

class _$RequestTimeMapArrivalSearchSerializer implements StructuredSerializer<RequestTimeMapArrivalSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeMapArrivalSearch, _$RequestTimeMapArrivalSearch];
    @override
    final String wireName = r'RequestTimeMapArrivalSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeMapArrivalSearch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'coords')
            ..add(serializers.serialize(object.coords,
                specifiedType: const FullType(Coords)));
        result
            ..add(r'transportation')
            ..add(serializers.serialize(object.transportation,
                specifiedType: const FullType(RequestTransportation)));
        result
            ..add(r'travel_time')
            ..add(serializers.serialize(object.travelTime,
                specifiedType: const FullType(int)));
        result
            ..add(r'arrival_time')
            ..add(serializers.serialize(object.arrivalTime,
                specifiedType: const FullType(DateTime)));
        if (object.properties != null) {
            result
                ..add(r'properties')
                ..add(serializers.serialize(object.properties,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapProperty)])));
        }
        if (object.range != null) {
            result
                ..add(r'range')
                ..add(serializers.serialize(object.range,
                    specifiedType: const FullType(RequestRangeNoMaxResults)));
        }
        if (object.levelOfDetail != null) {
            result
                ..add(r'level_of_detail')
                ..add(serializers.serialize(object.levelOfDetail,
                    specifiedType: const FullType(RequestLevelOfDetail)));
        }
        return result;
    }

    @override
    RequestTimeMapArrivalSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeMapArrivalSearchBuilder();

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
                case r'coords':
                    result.coords.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Coords)) as Coords);
                    break;
                case r'transportation':
                    result.transportation.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestTransportation)) as RequestTransportation);
                    break;
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'arrival_time':
                    result.arrivalTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeMapProperty)])) as BuiltList<RequestTimeMapProperty>);
                    break;
                case r'range':
                    result.range.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestRangeNoMaxResults)) as RequestRangeNoMaxResults);
                    break;
                case r'level_of_detail':
                    result.levelOfDetail.replace(serializers.deserialize(value,
                        specifiedType: const FullType(RequestLevelOfDetail)) as RequestLevelOfDetail);
                    break;
            }
        }
        return result.build();
    }
}

