            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_box.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_bounding_box.g.dart';

abstract class ResponseBoundingBox implements Built<ResponseBoundingBox, ResponseBoundingBoxBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'envelope')
    ResponseBox get envelope;
    
        @nullable
    @BuiltValueField(wireName: r'boxes')
    BuiltList<ResponseBox> get boxes;

    // Boilerplate code needed to wire-up generated code
    ResponseBoundingBox._();

    factory ResponseBoundingBox([updates(ResponseBoundingBoxBuilder b)]) = _$ResponseBoundingBox;
    static Serializer<ResponseBoundingBox> get serializer => _$responseBoundingBoxSerializer;
}

