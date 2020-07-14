            import 'package:openapi/model/response_fares.dart';
            import 'package:openapi/model/response_route.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_properties.g.dart';

abstract class ResponseRoutesProperties implements Built<ResponseRoutesProperties, ResponseRoutesPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;
    
        @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFares get fares;
    
        @nullable
    @BuiltValueField(wireName: r'route')
    ResponseRoute get route;

    // Boilerplate code needed to wire-up generated code
    ResponseRoutesProperties._();

    factory ResponseRoutesProperties([updates(ResponseRoutesPropertiesBuilder b)]) = _$ResponseRoutesProperties;
    static Serializer<ResponseRoutesProperties> get serializer => _$responseRoutesPropertiesSerializer;
}

