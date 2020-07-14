            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_result.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter.g.dart';

abstract class ResponseTimeFilter implements Built<ResponseTimeFilter, ResponseTimeFilterBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilter._();

    factory ResponseTimeFilter([updates(ResponseTimeFilterBuilder b)]) = _$ResponseTimeFilter;
    static Serializer<ResponseTimeFilter> get serializer => _$responseTimeFilterSerializer;
}

