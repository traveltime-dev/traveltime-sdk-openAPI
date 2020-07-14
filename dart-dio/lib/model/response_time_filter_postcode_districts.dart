            import 'package:openapi/model/response_time_filter_postcode_districts_result.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_districts.g.dart';

abstract class ResponseTimeFilterPostcodeDistricts implements Built<ResponseTimeFilterPostcodeDistricts, ResponseTimeFilterPostcodeDistrictsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodeDistrictsResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeDistricts._();

    factory ResponseTimeFilterPostcodeDistricts([updates(ResponseTimeFilterPostcodeDistrictsBuilder b)]) = _$ResponseTimeFilterPostcodeDistricts;
    static Serializer<ResponseTimeFilterPostcodeDistricts> get serializer => _$responseTimeFilterPostcodeDistrictsSerializer;
}

