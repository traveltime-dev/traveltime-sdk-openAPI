//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fare_ticket.g.dart';

abstract class ResponseFareTicket implements Built<ResponseFareTicket, ResponseFareTicketBuilder> {

    @BuiltValueField(wireName: r'type')
    ResponseFareTicketTypeEnum get type;
    // enum typeEnum {  single,  week,  month,  year,  };

    @BuiltValueField(wireName: r'price')
    double get price;

    @BuiltValueField(wireName: r'currency')
    String get currency;

    ResponseFareTicket._();

    static void _initializeBuilder(ResponseFareTicketBuilder b) => b;

    factory ResponseFareTicket([void updates(ResponseFareTicketBuilder b)]) = _$ResponseFareTicket;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseFareTicket> get serializer => _$ResponseFareTicketSerializer();
}

class _$ResponseFareTicketSerializer implements StructuredSerializer<ResponseFareTicket> {

    @override
    final Iterable<Type> types = const [ResponseFareTicket, _$ResponseFareTicket];
    @override
    final String wireName = r'ResponseFareTicket';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseFareTicket object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(ResponseFareTicketTypeEnum)));
        result
            ..add(r'price')
            ..add(serializers.serialize(object.price,
                specifiedType: const FullType(double)));
        result
            ..add(r'currency')
            ..add(serializers.serialize(object.currency,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ResponseFareTicket deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseFareTicketBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(ResponseFareTicketTypeEnum)) as ResponseFareTicketTypeEnum;
                    break;
                case r'price':
                    result.price = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'currency':
                    result.currency = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

class ResponseFareTicketTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'single')
  static const ResponseFareTicketTypeEnum single = _$responseFareTicketTypeEnum_single;
  @BuiltValueEnumConst(wireName: r'week')
  static const ResponseFareTicketTypeEnum week = _$responseFareTicketTypeEnum_week;
  @BuiltValueEnumConst(wireName: r'month')
  static const ResponseFareTicketTypeEnum month = _$responseFareTicketTypeEnum_month;
  @BuiltValueEnumConst(wireName: r'year')
  static const ResponseFareTicketTypeEnum year = _$responseFareTicketTypeEnum_year;

  static Serializer<ResponseFareTicketTypeEnum> get serializer => _$responseFareTicketTypeEnumSerializer;

  const ResponseFareTicketTypeEnum._(String name): super(name);

  static BuiltSet<ResponseFareTicketTypeEnum> get values => _$responseFareTicketTypeEnumValues;
  static ResponseFareTicketTypeEnum valueOf(String name) => _$responseFareTicketTypeEnumValueOf(name);
}

