            import 'package:openapi/model/response_time_filter_postcode.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcodes_result.g.dart';

abstract class ResponseTimeFilterPostcodesResult implements Built<ResponseTimeFilterPostcodesResult, ResponseTimeFilterPostcodesResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'postcodes')
    BuiltList<ResponseTimeFilterPostcode> get postcodes;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodesResult._();

    factory ResponseTimeFilterPostcodesResult([updates(ResponseTimeFilterPostcodesResultBuilder b)]) = _$ResponseTimeFilterPostcodesResult;
    static Serializer<ResponseTimeFilterPostcodesResult> get serializer => _$responseTimeFilterPostcodesResultSerializer;
}

