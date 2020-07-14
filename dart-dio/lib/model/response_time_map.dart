            import 'package:openapi/model/response_time_map_result.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map.g.dart';

abstract class ResponseTimeMap implements Built<ResponseTimeMap, ResponseTimeMapBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMap._();

    factory ResponseTimeMap([updates(ResponseTimeMapBuilder b)]) = _$ResponseTimeMap;
    static Serializer<ResponseTimeMap> get serializer => _$responseTimeMapSerializer;
}

