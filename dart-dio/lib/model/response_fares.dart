//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_fare_ticket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_fares_breakdown_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares.g.dart';

abstract class ResponseFares implements Built<ResponseFares, ResponseFaresBuilder> {

    @BuiltValueField(wireName: r'breakdown')
    BuiltList<ResponseFaresBreakdownItem> get breakdown;

    @BuiltValueField(wireName: r'tickets_total')
    BuiltList<ResponseFareTicket> get ticketsTotal;

    ResponseFares._();

    static void _initializeBuilder(ResponseFaresBuilder b) => b;

    factory ResponseFares([void updates(ResponseFaresBuilder b)]) = _$ResponseFares;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseFares> get serializer => _$ResponseFaresSerializer();
}

class _$ResponseFaresSerializer implements StructuredSerializer<ResponseFares> {

    @override
    final Iterable<Type> types = const [ResponseFares, _$ResponseFares];
    @override
    final String wireName = r'ResponseFares';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseFares object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'breakdown')
            ..add(serializers.serialize(object.breakdown,
                specifiedType: const FullType(BuiltList, [FullType(ResponseFaresBreakdownItem)])));
        result
            ..add(r'tickets_total')
            ..add(serializers.serialize(object.ticketsTotal,
                specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])));
        return result;
    }

    @override
    ResponseFares deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseFaresBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'breakdown':
                    result.breakdown.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseFaresBreakdownItem)])) as BuiltList<ResponseFaresBreakdownItem>);
                    break;
                case r'tickets_total':
                    result.ticketsTotal.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])) as BuiltList<ResponseFareTicket>);
                    break;
            }
        }
        return result.build();
    }
}

