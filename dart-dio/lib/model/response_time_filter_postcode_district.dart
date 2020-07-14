            import 'package:openapi/model/response_time_filter_postcode_district_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_district.g.dart';

abstract class ResponseTimeFilterPostcodeDistrict implements Built<ResponseTimeFilterPostcodeDistrict, ResponseTimeFilterPostcodeDistrictBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'code')
    String get code;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseTimeFilterPostcodeDistrictProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeDistrict._();

    factory ResponseTimeFilterPostcodeDistrict([updates(ResponseTimeFilterPostcodeDistrictBuilder b)]) = _$ResponseTimeFilterPostcodeDistrict;
    static Serializer<ResponseTimeFilterPostcodeDistrict> get serializer => _$responseTimeFilterPostcodeDistrictSerializer;
}

