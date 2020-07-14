        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes_properties.g.dart';

abstract class ResponseTimeFilterPostcodesProperties implements Built<ResponseTimeFilterPostcodesProperties, ResponseTimeFilterPostcodesPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodesProperties._();

    factory ResponseTimeFilterPostcodesProperties([updates(ResponseTimeFilterPostcodesPropertiesBuilder b)]) = _$ResponseTimeFilterPostcodesProperties;
    static Serializer<ResponseTimeFilterPostcodesProperties> get serializer => _$responseTimeFilterPostcodesPropertiesSerializer;
}

