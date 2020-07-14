            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_geocoding_geo_json_feature.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding.g.dart';

abstract class ResponseGeocoding implements Built<ResponseGeocoding, ResponseGeocodingBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'features')
    BuiltList<ResponseGeocodingGeoJsonFeature> get features;

    // Boilerplate code needed to wire-up generated code
    ResponseGeocoding._();

    factory ResponseGeocoding([updates(ResponseGeocodingBuilder b)]) = _$ResponseGeocoding;
    static Serializer<ResponseGeocoding> get serializer => _$responseGeocodingSerializer;
}

