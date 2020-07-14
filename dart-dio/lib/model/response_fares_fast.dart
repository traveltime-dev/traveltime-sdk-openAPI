            import 'package:openapi/model/response_fare_ticket.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_fares_fast.g.dart';

abstract class ResponseFaresFast implements Built<ResponseFaresFast, ResponseFaresFastBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'tickets_total')
    BuiltList<ResponseFareTicket> get ticketsTotal;

    // Boilerplate code needed to wire-up generated code
    ResponseFaresFast._();

    factory ResponseFaresFast([updates(ResponseFaresFastBuilder b)]) = _$ResponseFaresFast;
    static Serializer<ResponseFaresFast> get serializer => _$responseFaresFastSerializer;
}

