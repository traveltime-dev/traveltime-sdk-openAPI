            import 'package:openapi/model/response_routes_properties.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_routes_location.g.dart';

abstract class ResponseRoutesLocation implements Built<ResponseRoutesLocation, ResponseRoutesLocationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseRoutesProperties> get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseRoutesLocation._();

    factory ResponseRoutesLocation([updates(ResponseRoutesLocationBuilder b)]) = _$ResponseRoutesLocation;
    static Serializer<ResponseRoutesLocation> get serializer => _$responseRoutesLocationSerializer;
}

