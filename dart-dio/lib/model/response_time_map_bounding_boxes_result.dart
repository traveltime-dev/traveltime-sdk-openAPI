            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_map_properties.dart';
            import 'package:openapi/model/response_bounding_box.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_bounding_boxes_result.g.dart';

abstract class ResponseTimeMapBoundingBoxesResult implements Built<ResponseTimeMapBoundingBoxesResult, ResponseTimeMapBoundingBoxesResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'bounding_boxes')
    BuiltList<ResponseBoundingBox> get boundingBoxes;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseTimeMapProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapBoundingBoxesResult._();

    factory ResponseTimeMapBoundingBoxesResult([updates(ResponseTimeMapBoundingBoxesResultBuilder b)]) = _$ResponseTimeMapBoundingBoxesResult;
    static Serializer<ResponseTimeMapBoundingBoxesResult> get serializer => _$responseTimeMapBoundingBoxesResultSerializer;
}

