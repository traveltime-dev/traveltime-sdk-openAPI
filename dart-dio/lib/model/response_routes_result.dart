            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_routes_location.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_result.g.dart';

abstract class ResponseRoutesResult implements Built<ResponseRoutesResult, ResponseRoutesResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseRoutesLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    // Boilerplate code needed to wire-up generated code
    ResponseRoutesResult._();

    factory ResponseRoutesResult([updates(ResponseRoutesResultBuilder b)]) = _$ResponseRoutesResult;
    static Serializer<ResponseRoutesResult> get serializer => _$responseRoutesResultSerializer;
}

