        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_features_public_transport.g.dart';

abstract class ResponseMapInfoFeaturesPublicTransport implements Built<ResponseMapInfoFeaturesPublicTransport, ResponseMapInfoFeaturesPublicTransportBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'date_start')
    DateTime get dateStart;
    
        @nullable
    @BuiltValueField(wireName: r'date_end')
    DateTime get dateEnd;

    // Boilerplate code needed to wire-up generated code
    ResponseMapInfoFeaturesPublicTransport._();

    factory ResponseMapInfoFeaturesPublicTransport([updates(ResponseMapInfoFeaturesPublicTransportBuilder b)]) = _$ResponseMapInfoFeaturesPublicTransport;
    static Serializer<ResponseMapInfoFeaturesPublicTransport> get serializer => _$responseMapInfoFeaturesPublicTransportSerializer;
}

