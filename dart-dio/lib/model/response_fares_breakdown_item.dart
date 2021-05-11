//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_fare_ticket.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_transportation_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares_breakdown_item.g.dart';

abstract class ResponseFaresBreakdownItem implements Built<ResponseFaresBreakdownItem, ResponseFaresBreakdownItemBuilder> {

    @BuiltValueField(wireName: r'modes')
    BuiltList<ResponseTransportationMode> get modes;

    @BuiltValueField(wireName: r'route_part_ids')
    BuiltList<int> get routePartIds;

    @BuiltValueField(wireName: r'tickets')
    BuiltList<ResponseFareTicket> get tickets;

    ResponseFaresBreakdownItem._();

    static void _initializeBuilder(ResponseFaresBreakdownItemBuilder b) => b;

    factory ResponseFaresBreakdownItem([void updates(ResponseFaresBreakdownItemBuilder b)]) = _$ResponseFaresBreakdownItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseFaresBreakdownItem> get serializer => _$ResponseFaresBreakdownItemSerializer();
}

class _$ResponseFaresBreakdownItemSerializer implements StructuredSerializer<ResponseFaresBreakdownItem> {

    @override
    final Iterable<Type> types = const [ResponseFaresBreakdownItem, _$ResponseFaresBreakdownItem];
    @override
    final String wireName = r'ResponseFaresBreakdownItem';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseFaresBreakdownItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'modes')
            ..add(serializers.serialize(object.modes,
                specifiedType: const FullType(BuiltList, [FullType(ResponseTransportationMode)])));
        result
            ..add(r'route_part_ids')
            ..add(serializers.serialize(object.routePartIds,
                specifiedType: const FullType(BuiltList, [FullType(int)])));
        result
            ..add(r'tickets')
            ..add(serializers.serialize(object.tickets,
                specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])));
        return result;
    }

    @override
    ResponseFaresBreakdownItem deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseFaresBreakdownItemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'modes':
                    result.modes.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseTransportationMode)])) as BuiltList<ResponseTransportationMode>);
                    break;
                case r'route_part_ids':
                    result.routePartIds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(int)])) as BuiltList<int>);
                    break;
                case r'tickets':
                    result.tickets.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseFareTicket)])) as BuiltList<ResponseFareTicket>);
                    break;
            }
        }
        return result.build();
    }
}

