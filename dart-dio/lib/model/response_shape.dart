            import 'package:openapi/model/coords.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_shape.g.dart';

abstract class ResponseShape implements Built<ResponseShape, ResponseShapeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'shell')
    BuiltList<Coords> get shell;
    
        @nullable
    @BuiltValueField(wireName: r'holes')
    BuiltList<BuiltList<Coords>> get holes;

    // Boilerplate code needed to wire-up generated code
    ResponseShape._();

    factory ResponseShape([updates(ResponseShapeBuilder b)]) = _$ResponseShape;
    static Serializer<ResponseShape> get serializer => _$responseShapeSerializer;
}

