import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcode_district_properties.dart';

part 'response_time_filter_postcode_district.jser.dart';

class ResponseTimeFilterPostcodeDistrict {
  
  @Alias('code')
  final String code;
  
  @Alias('properties')
  final ResponseTimeFilterPostcodeDistrictProperties properties;
  

  ResponseTimeFilterPostcodeDistrict(
      

{
    
     this.code = null,  
     this.properties = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrict[code=$code, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodeDistrictSerializer extends Serializer<ResponseTimeFilterPostcodeDistrict> with _$ResponseTimeFilterPostcodeDistrictSerializer {

}

