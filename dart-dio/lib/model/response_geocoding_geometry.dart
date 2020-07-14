            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_geometry.g.dart';

abstract class ResponseGeocodingGeometry implements Built<ResponseGeocodingGeometry, ResponseGeocodingGeometryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'coordinates')
    BuiltList<double> get coordinates;

    // Boilerplate code needed to wire-up generated code
    ResponseGeocodingGeometry._();

    factory ResponseGeocodingGeometry([updates(ResponseGeocodingGeometryBuilder b)]) = _$ResponseGeocodingGeometry;
    static Serializer<ResponseGeocodingGeometry> get serializer => _$responseGeocodingGeometrySerializer;
}

