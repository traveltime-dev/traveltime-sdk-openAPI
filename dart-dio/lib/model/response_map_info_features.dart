            import 'package:openapi/model/response_map_info_features_public_transport.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_features.g.dart';

abstract class ResponseMapInfoFeatures implements Built<ResponseMapInfoFeatures, ResponseMapInfoFeaturesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'public_transport')
    ResponseMapInfoFeaturesPublicTransport get publicTransport;
    
        @nullable
    @BuiltValueField(wireName: r'fares')
    bool get fares;
    
        @nullable
    @BuiltValueField(wireName: r'postcodes')
    bool get postcodes;

    // Boilerplate code needed to wire-up generated code
    ResponseMapInfoFeatures._();

    factory ResponseMapInfoFeatures([updates(ResponseMapInfoFeaturesBuilder b)]) = _$ResponseMapInfoFeatures;
    static Serializer<ResponseMapInfoFeatures> get serializer => _$responseMapInfoFeaturesSerializer;
}

