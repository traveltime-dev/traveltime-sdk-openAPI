            import 'package:openapi/model/response_map_info_features.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_map.g.dart';

abstract class ResponseMapInfoMap implements Built<ResponseMapInfoMap, ResponseMapInfoMapBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'features')
    ResponseMapInfoFeatures get features;

    // Boilerplate code needed to wire-up generated code
    ResponseMapInfoMap._();

    factory ResponseMapInfoMap([updates(ResponseMapInfoMapBuilder b)]) = _$ResponseMapInfoMap;
    static Serializer<ResponseMapInfoMap> get serializer => _$responseMapInfoMapSerializer;
}

