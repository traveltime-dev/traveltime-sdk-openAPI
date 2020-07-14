            import 'package:openapi/model/response_time_filter_fast_location.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_result.g.dart';

abstract class ResponseTimeFilterFastResult implements Built<ResponseTimeFilterFastResult, ResponseTimeFilterFastResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseTimeFilterFastLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'unreachable')
    BuiltList<String> get unreachable;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterFastResult._();

    factory ResponseTimeFilterFastResult([updates(ResponseTimeFilterFastResultBuilder b)]) = _$ResponseTimeFilterFastResult;
    static Serializer<ResponseTimeFilterFastResult> get serializer => _$responseTimeFilterFastResultSerializer;
}

