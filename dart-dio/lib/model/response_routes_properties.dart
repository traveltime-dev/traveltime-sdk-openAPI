//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_fares.dart';
import 'package:openapi/model/response_route.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_properties.g.dart';

abstract class ResponseRoutesProperties implements Built<ResponseRoutesProperties, ResponseRoutesPropertiesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;

    @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFares get fares;

    @nullable
    @BuiltValueField(wireName: r'route')
    ResponseRoute get route;

    ResponseRoutesProperties._();

    static void _initializeBuilder(ResponseRoutesPropertiesBuilder b) => b;

    factory ResponseRoutesProperties([void updates(ResponseRoutesPropertiesBuilder b)]) = _$ResponseRoutesProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoutesProperties> get serializer => _$ResponseRoutesPropertiesSerializer();
}

class _$ResponseRoutesPropertiesSerializer implements StructuredSerializer<ResponseRoutesProperties> {

    @override
    final Iterable<Type> types = const [ResponseRoutesProperties, _$ResponseRoutesProperties];
    @override
    final String wireName = r'ResponseRoutesProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoutesProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.travelTime != null) {
            result
                ..add(r'travel_time')
                ..add(serializers.serialize(object.travelTime,
                    specifiedType: const FullType(int)));
        }
        if (object.distance != null) {
            result
                ..add(r'distance')
                ..add(serializers.serialize(object.distance,
                    specifiedType: const FullType(int)));
        }
        if (object.fares != null) {
            result
                ..add(r'fares')
                ..add(serializers.serialize(object.fares,
                    specifiedType: const FullType(ResponseFares)));
        }
        if (object.route != null) {
            result
                ..add(r'route')
                ..add(serializers.serialize(object.route,
                    specifiedType: const FullType(ResponseRoute)));
        }
        return result;
    }

    @override
    ResponseRoutesProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRoutesPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'distance':
                    result.distance = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'fares':
                    result.fares.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseFares)) as ResponseFares);
                    break;
                case r'route':
                    result.route.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseRoute)) as ResponseRoute);
                    break;
            }
        }
        return result.build();
    }
}

