//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_fare_ticket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares_fast.g.dart';

abstract class ResponseFaresFast implements Built<ResponseFaresFast, ResponseFaresFastBuilder> {

    @BuiltValueField(wireName: r'tickets_total')
    BuiltList<ResponseFareTicket> get ticketsTotal;

    ResponseFaresFast._();

    static void _initializeBuilder(ResponseFaresFastBuilder b) => b;

    factory ResponseFaresFast([void updates(ResponseFaresFastBuilder b)]) = _$ResponseFaresFast;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseFaresFast> get serializer => _$ResponseFaresFastSerializer();
}

class _$ResponseFaresFastSerializer implements StructuredSerializer<ResponseFaresFast> {

    @override
    final Iterable<Type> types = const [ResponseFaresFast, _$ResponseFaresFast];
    @override
    final String wireName = r'ResponseFaresFast';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseFaresFast object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'tickets_total')
            ..add(serializers.serialize(object.ticketsTotal,
                specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])));
        return result;
    }

    @override
    ResponseFaresFast deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseFaresFastBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'tickets_total':
                    result.ticketsTotal.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])) as BuiltList<ResponseFareTicket>);
                    break;
            }
        }
        return result.build();
    }
}

