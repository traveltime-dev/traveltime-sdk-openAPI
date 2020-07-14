            import 'package:openapi/model/response_fare_ticket.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_transportation_mode.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares_breakdown_item.g.dart';

abstract class ResponseFaresBreakdownItem implements Built<ResponseFaresBreakdownItem, ResponseFaresBreakdownItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'modes')
    BuiltList<ResponseTransportationMode> get modes;
    
        @nullable
    @BuiltValueField(wireName: r'route_part_ids')
    BuiltList<int> get routePartIds;
    
        @nullable
    @BuiltValueField(wireName: r'tickets')
    BuiltList<ResponseFareTicket> get tickets;

    // Boilerplate code needed to wire-up generated code
    ResponseFaresBreakdownItem._();

    factory ResponseFaresBreakdownItem([updates(ResponseFaresBreakdownItemBuilder b)]) = _$ResponseFaresBreakdownItem;
    static Serializer<ResponseFaresBreakdownItem> get serializer => _$responseFaresBreakdownItemSerializer;
}

