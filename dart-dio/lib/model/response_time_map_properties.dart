        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_properties.g.dart';

abstract class ResponseTimeMapProperties implements Built<ResponseTimeMapProperties, ResponseTimeMapPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'is_only_walking')
    bool get isOnlyWalking;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapProperties._();

    factory ResponseTimeMapProperties([updates(ResponseTimeMapPropertiesBuilder b)]) = _$ResponseTimeMapProperties;
    static Serializer<ResponseTimeMapProperties> get serializer => _$responseTimeMapPropertiesSerializer;
}

