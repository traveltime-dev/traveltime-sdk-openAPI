import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_travel_time_statistics.dart';
part 'response_time_filter_postcode_district_properties.jser.dart';

class ResponseTimeFilterPostcodeDistrictProperties {
  
  @Alias('travel_time_reachable')
  final ResponseTravelTimeStatistics travelTimeReachable;
  
  @Alias('travel_time_all')
  final ResponseTravelTimeStatistics travelTimeAll;
  
  @Alias('coverage')
  final double coverage;
  

  ResponseTimeFilterPostcodeDistrictProperties(
    

{
     this.travelTimeReachable = null,  
     this.travelTimeAll = null,  
     this.coverage = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeDistrictProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage, ]';
  }
}

@GenSerializer()
class ResponseTimeFilterPostcodeDistrictPropertiesSerializer extends Serializer<ResponseTimeFilterPostcodeDistrictProperties> with _$ResponseTimeFilterPostcodeDistrictPropertiesSerializer {

}
