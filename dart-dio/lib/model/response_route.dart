            import 'package:openapi/model/response_route_part.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_route.g.dart';

abstract class ResponseRoute implements Built<ResponseRoute, ResponseRouteBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_time')
    DateTime get arrivalTime;
    
        @nullable
    @BuiltValueField(wireName: r'parts')
    BuiltList<ResponseRoutePart> get parts;

    // Boilerplate code needed to wire-up generated code
    ResponseRoute._();

    factory ResponseRoute([updates(ResponseRouteBuilder b)]) = _$ResponseRoute;
    static Serializer<ResponseRoute> get serializer => _$responseRouteSerializer;
}

