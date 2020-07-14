        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_box.g.dart';

abstract class ResponseBox implements Built<ResponseBox, ResponseBoxBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'min_lat')
    double get minLat;
    
        @nullable
    @BuiltValueField(wireName: r'max_lat')
    double get maxLat;
    
        @nullable
    @BuiltValueField(wireName: r'min_lng')
    double get minLng;
    
        @nullable
    @BuiltValueField(wireName: r'max_lng')
    double get maxLng;

    // Boilerplate code needed to wire-up generated code
    ResponseBox._();

    factory ResponseBox([updates(ResponseBoxBuilder b)]) = _$ResponseBox;
    static Serializer<ResponseBox> get serializer => _$responseBoxSerializer;
}

