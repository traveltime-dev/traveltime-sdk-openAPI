            import 'package:openapi/model/response_travel_time_statistics.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sector_properties.g.dart';

abstract class ResponseTimeFilterPostcodeSectorProperties implements Built<ResponseTimeFilterPostcodeSectorProperties, ResponseTimeFilterPostcodeSectorPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'travel_time_reachable')
    ResponseTravelTimeStatistics get travelTimeReachable;
    
        @nullable
    @BuiltValueField(wireName: r'travel_time_all')
    ResponseTravelTimeStatistics get travelTimeAll;
    
        @nullable
    @BuiltValueField(wireName: r'coverage')
    double get coverage;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeSectorProperties._();

    factory ResponseTimeFilterPostcodeSectorProperties([updates(ResponseTimeFilterPostcodeSectorPropertiesBuilder b)]) = _$ResponseTimeFilterPostcodeSectorProperties;
    static Serializer<ResponseTimeFilterPostcodeSectorProperties> get serializer => _$responseTimeFilterPostcodeSectorPropertiesSerializer;
}

