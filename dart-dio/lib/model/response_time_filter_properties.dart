            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_fares.dart';
            import 'package:openapi/model/response_distance_breakdown_item.dart';
            import 'package:openapi/model/response_route.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_properties.g.dart';

abstract class ResponseTimeFilterProperties implements Built<ResponseTimeFilterProperties, ResponseTimeFilterPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;
    
        @nullable
    @BuiltValueField(wireName: r'distance_breakdown')
    BuiltList<ResponseDistanceBreakdownItem> get distanceBreakdown;
    
        @nullable
    @BuiltValueField(wireName: r'fares')
    ResponseFares get fares;
    
        @nullable
    @BuiltValueField(wireName: r'route')
    ResponseRoute get route;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterProperties._();

    factory ResponseTimeFilterProperties([updates(ResponseTimeFilterPropertiesBuilder b)]) = _$ResponseTimeFilterProperties;
    static Serializer<ResponseTimeFilterProperties> get serializer => _$responseTimeFilterPropertiesSerializer;
}

