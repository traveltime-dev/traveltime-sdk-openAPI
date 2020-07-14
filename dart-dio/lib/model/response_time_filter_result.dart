            import 'package:openapi/model/response_time_filter_location.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_result.g.dart';

abstract class ResponseTimeFilterResult implements Built<ResponseTimeFilterResult, ResponseTimeFilterResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseTimeFilterLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterResult._();

    factory ResponseTimeFilterResult([updates(ResponseTimeFilterResultBuilder b)]) = _$ResponseTimeFilterResult;
    static Serializer<ResponseTimeFilterResult> get serializer => _$responseTimeFilterResultSerializer;
}

