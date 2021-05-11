//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/coords.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_range_no_max_results.dart';
import 'package:openapi/model/request_time_map_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_map_departure_search.g.dart';

abstract class RequestTimeMapDepartureSearch implements Built<RequestTimeMapDepartureSearch, RequestTimeMapDepartureSearchBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'coords')
    Coords get coords;

    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;

    @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeMapProperty> get properties;

    @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeNoMaxResults get range;

    RequestTimeMapDepartureSearch._();

    static void _initializeBuilder(RequestTimeMapDepartureSearchBuilder b) => b;

    factory RequestTimeMapDepartureSearch([void updates(RequestTimeMapDepartureSearchBuilder b)]) = _$RequestTimeMapDepartureSearch;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeMapDepartureSearch> get serializer => _$RequestTimeMapDepartureSearchSerializer();
}

class _$RequestTimeMapDepartureSearchSerializer implements StructuredSerializer<RequestTimeMapDepartureSearch> {

    @override
    final Iterable<Type> types = const [RequestTimeMapDepartureSearch, _$RequestTimeMapDepartureSearch];
    @override
    final String wireName = r'RequestTimeMapDepartureSearch';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeMapDepartureSearch object,
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
            ..add(r'departure_time')
            ..add(serializers.serialize(object.departureTime,
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
        return result;
    }

    @override
    RequestTimeMapDepartureSearch deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeMapDepartureSearchBuilder();

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
                case r'departure_time':
                    result.departureTime = serializers.deserialize(value,
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
            }
        }
        return result.build();
    }
}

