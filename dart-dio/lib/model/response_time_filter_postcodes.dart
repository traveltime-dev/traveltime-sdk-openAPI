            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_postcodes_result.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes.g.dart';

abstract class ResponseTimeFilterPostcodes implements Built<ResponseTimeFilterPostcodes, ResponseTimeFilterPostcodesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodesResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodes._();

    factory ResponseTimeFilterPostcodes([updates(ResponseTimeFilterPostcodesBuilder b)]) = _$ResponseTimeFilterPostcodes;
    static Serializer<ResponseTimeFilterPostcodes> get serializer => _$responseTimeFilterPostcodesSerializer;
}

