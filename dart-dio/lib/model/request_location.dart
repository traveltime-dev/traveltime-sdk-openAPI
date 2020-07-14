            import 'package:openapi/model/coords.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_location.g.dart';

abstract class RequestLocation implements Built<RequestLocation, RequestLocationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'coords')
    Coords get coords;

    // Boilerplate code needed to wire-up generated code
    RequestLocation._();

    factory RequestLocation([updates(RequestLocationBuilder b)]) = _$RequestLocation;
    static Serializer<RequestLocation> get serializer => _$requestLocationSerializer;
}

