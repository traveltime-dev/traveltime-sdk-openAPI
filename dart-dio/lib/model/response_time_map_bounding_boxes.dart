            import 'package:openapi/model/response_time_map_bounding_boxes_result.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_bounding_boxes.g.dart';

abstract class ResponseTimeMapBoundingBoxes implements Built<ResponseTimeMapBoundingBoxes, ResponseTimeMapBoundingBoxesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapBoundingBoxesResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapBoundingBoxes._();

    factory ResponseTimeMapBoundingBoxes([updates(ResponseTimeMapBoundingBoxesBuilder b)]) = _$ResponseTimeMapBoundingBoxes;
    static Serializer<ResponseTimeMapBoundingBoxes> get serializer => _$responseTimeMapBoundingBoxesSerializer;
}

