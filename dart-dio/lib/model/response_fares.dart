            import 'package:openapi/model/response_fare_ticket.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_fares_breakdown_item.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares.g.dart';

abstract class ResponseFares implements Built<ResponseFares, ResponseFaresBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'breakdown')
    BuiltList<ResponseFaresBreakdownItem> get breakdown;
    
        @nullable
    @BuiltValueField(wireName: r'tickets_total')
    BuiltList<ResponseFareTicket> get ticketsTotal;

    // Boilerplate code needed to wire-up generated code
    ResponseFares._();

    factory ResponseFares([updates(ResponseFaresBuilder b)]) = _$ResponseFares;
    static Serializer<ResponseFares> get serializer => _$responseFaresSerializer;
}

