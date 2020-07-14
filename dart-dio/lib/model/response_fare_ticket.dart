        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fare_ticket.g.dart';

abstract class ResponseFareTicket implements Built<ResponseFareTicket, ResponseFareTicketBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    ResponseFareTicketType get type;
        //enum typeEnum {  single,  week,  month,  year,  };
    
        @nullable
    @BuiltValueField(wireName: r'price')
    double get price;
    
        @nullable
    @BuiltValueField(wireName: r'currency')
    String get currency;

    // Boilerplate code needed to wire-up generated code
    ResponseFareTicket._();

    factory ResponseFareTicket([updates(ResponseFareTicketBuilder b)]) = _$ResponseFareTicket;
    static Serializer<ResponseFareTicket> get serializer => _$responseFareTicketSerializer;
}

class ResponseFareTicketType extends EnumClass {

  @BuiltValueEnumConst(wireName: "single")
  static const ResponseFareTicketType single = _$single;
  @BuiltValueEnumConst(wireName: "week")
  static const ResponseFareTicketType week = _$week;
  @BuiltValueEnumConst(wireName: "month")
  static const ResponseFareTicketType month = _$month;
  @BuiltValueEnumConst(wireName: "year")
  static const ResponseFareTicketType year = _$year;

  static Serializer<ResponseFareTicketType> get serializer => _$responseFareTicketTypeSerializer;

  const ResponseFareTicketType._(String name): super(name);

  static BuiltSet<ResponseFareTicketType> get values => _$responseFareTicketTypeValues;
  static ResponseFareTicketType valueOf(String name) => _$responseFareTicketTypeValueOf(name);
}


