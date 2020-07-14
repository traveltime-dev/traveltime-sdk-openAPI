            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_fast_result.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast.g.dart';

abstract class ResponseTimeFilterFast implements Built<ResponseTimeFilterFast, ResponseTimeFilterFastBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterFastResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterFast._();

    factory ResponseTimeFilterFast([updates(ResponseTimeFilterFastBuilder b)]) = _$ResponseTimeFilterFast;
    static Serializer<ResponseTimeFilterFast> get serializer => _$responseTimeFilterFastSerializer;
}

