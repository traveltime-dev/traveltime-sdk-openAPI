            import 'package:openapi/model/response_geocoding_geometry.dart';
            import 'package:openapi/model/response_geocoding_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_geo_json_feature.g.dart';

abstract class ResponseGeocodingGeoJsonFeature implements Built<ResponseGeocodingGeoJsonFeature, ResponseGeocodingGeoJsonFeatureBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'geometry')
    ResponseGeocodingGeometry get geometry;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseGeocodingProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseGeocodingGeoJsonFeature._();

    factory ResponseGeocodingGeoJsonFeature([updates(ResponseGeocodingGeoJsonFeatureBuilder b)]) = _$ResponseGeocodingGeoJsonFeature;
    static Serializer<ResponseGeocodingGeoJsonFeature> get serializer => _$responseGeocodingGeoJsonFeatureSerializer;
}

