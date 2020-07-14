            import 'package:openapi/model/response_time_map_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_wkt_result.g.dart';

abstract class ResponseTimeMapWktResult implements Built<ResponseTimeMapWktResult, ResponseTimeMapWktResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'shape')
    String get shape;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapWktResult._();

    factory ResponseTimeMapWktResult([updates(ResponseTimeMapWktResultBuilder b)]) = _$ResponseTimeMapWktResult;
    static Serializer<ResponseTimeMapWktResult> get serializer => _$responseTimeMapWktResultSerializer;
}

