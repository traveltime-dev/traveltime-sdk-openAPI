import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcode_districts_result.dart';

part 'response_time_filter_postcode_districts.jser.dart';

class ResponseTimeFilterPostcodeDistricts {
  
  @Alias('results', isNullable: false,  )
  final List<ResponseTimeFilterPostcodeDistrictsResult> results;
  

  ResponseTimeFilterPostcodeDistricts(
      

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistricts[results=$results, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodeDistrictsSerializer extends Serializer<ResponseTimeFilterPostcodeDistricts> with _$ResponseTimeFilterPostcodeDistrictsSerializer {

}

