            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_map_info_map.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info.g.dart';

abstract class ResponseMapInfo implements Built<ResponseMapInfo, ResponseMapInfoBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'maps')
    BuiltList<ResponseMapInfoMap> get maps;

    // Boilerplate code needed to wire-up generated code
    ResponseMapInfo._();

    factory ResponseMapInfo([updates(ResponseMapInfoBuilder b)]) = _$ResponseMapInfo;
    static Serializer<ResponseMapInfo> get serializer => _$responseMapInfoSerializer;
}

