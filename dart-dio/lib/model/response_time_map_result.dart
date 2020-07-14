            import 'package:openapi/model/response_shape.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_map_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_result.g.dart';

abstract class ResponseTimeMapResult implements Built<ResponseTimeMapResult, ResponseTimeMapResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'shapes')
    BuiltList<ResponseShape> get shapes;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapResult._();

    factory ResponseTimeMapResult([updates(ResponseTimeMapResultBuilder b)]) = _$ResponseTimeMapResult;
    static Serializer<ResponseTimeMapResult> get serializer => _$responseTimeMapResultSerializer;
}

