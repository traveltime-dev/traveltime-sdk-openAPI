            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_map_wkt_result.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_map_wkt.g.dart';

abstract class ResponseTimeMapWkt implements Built<ResponseTimeMapWkt, ResponseTimeMapWktBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeMapWktResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeMapWkt._();

    factory ResponseTimeMapWkt([updates(ResponseTimeMapWktBuilder b)]) = _$ResponseTimeMapWkt;
    static Serializer<ResponseTimeMapWkt> get serializer => _$responseTimeMapWktSerializer;
}

