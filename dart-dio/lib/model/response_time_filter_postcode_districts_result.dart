            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_postcode_district.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_districts_result.g.dart';

abstract class ResponseTimeFilterPostcodeDistrictsResult implements Built<ResponseTimeFilterPostcodeDistrictsResult, ResponseTimeFilterPostcodeDistrictsResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'districts')
    BuiltList<ResponseTimeFilterPostcodeDistrict> get districts;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeDistrictsResult._();

    factory ResponseTimeFilterPostcodeDistrictsResult([updates(ResponseTimeFilterPostcodeDistrictsResultBuilder b)]) = _$ResponseTimeFilterPostcodeDistrictsResult;
    static Serializer<ResponseTimeFilterPostcodeDistrictsResult> get serializer => _$responseTimeFilterPostcodeDistrictsResultSerializer;
}

