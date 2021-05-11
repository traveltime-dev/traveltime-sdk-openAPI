//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_route_part.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_route.g.dart';

abstract class ResponseRoute implements Built<ResponseRoute, ResponseRouteBuilder> {

    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;

    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;

    @BuiltValueField(wireName: r'parts')
    BuiltList<ResponseRoutePart> get parts;

    ResponseRoute._();

    static void _initializeBuilder(ResponseRouteBuilder b) => b;

    factory ResponseRoute([void updates(ResponseRouteBuilder b)]) = _$ResponseRoute;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoute> get serializer => _$ResponseRouteSerializer();
}

class _$ResponseRouteSerializer implements StructuredSerializer<ResponseRoute> {

    @override
    final Iterable<Type> types = const [ResponseRoute, _$ResponseRoute];
    @override
    final String wireName = r'ResponseRoute';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoute object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'departure_time')
            ..add(serializers.serialize(object.departureTime,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'arrival_time')
            ..add(serializers.serialize(object.arrivalTime,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'parts')
            ..add(serializers.serialize(object.parts,
                specifiedType: const FullType(BuiltList, [FullType(ResponseRoutePart)])));
        return result;
    }

    @override
    ResponseRoute deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRouteBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'departure_time':
                    result.departureTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'arrival_time':
                    result.arrivalTime = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'parts':
                    result.parts.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseRoutePart)])) as BuiltList<ResponseRoutePart>);
                    break;
            }
        }
        return result.build();
    }
}

