            import 'package:openapi/model/response_routes_result.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes.g.dart';

abstract class ResponseRoutes implements Built<ResponseRoutes, ResponseRoutesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseRoutesResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseRoutes._();

    factory ResponseRoutes([updates(ResponseRoutesBuilder b)]) = _$ResponseRoutes;
    static Serializer<ResponseRoutes> get serializer => _$responseRoutesSerializer;
}

