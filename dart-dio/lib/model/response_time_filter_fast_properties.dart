            import 'package:openapi/model/response_fares_fast.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_properties.g.dart';

abstract class ResponseTimeFilterFastProperties implements Built<ResponseTimeFilterFastProperties, ResponseTimeFilterFastPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFaresFast get fares;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterFastProperties._();

    factory ResponseTimeFilterFastProperties([updates(ResponseTimeFilterFastPropertiesBuilder b)]) = _$ResponseTimeFilterFastProperties;
    static Serializer<ResponseTimeFilterFastProperties> get serializer => _$responseTimeFilterFastPropertiesSerializer;
}

