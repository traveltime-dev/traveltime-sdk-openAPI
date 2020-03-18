import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_travel_time_statistics.dart';

part 'response_time_filter_postcode_sector_properties.jser.dart';

class ResponseTimeFilterPostcodeSectorProperties {
  
  @Alias('travel_time_reachable', isNullable: false,  )
  final ResponseTravelTimeStatistics travelTimeReachable;
  
  @Alias('travel_time_all', isNullable: false,  )
  final ResponseTravelTimeStatistics travelTimeAll;
  
  @Alias('coverage', isNullable: false,  )
  final double coverage;
  

  ResponseTimeFilterPostcodeSectorProperties(
      

{
     this.travelTimeReachable = null,  
     this.travelTimeAll = null,  
     this.coverage = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSectorProperties[travelTimeReachable=$travelTimeReachable, travelTimeAll=$travelTimeAll, coverage=$coverage, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodeSectorPropertiesSerializer extends Serializer<ResponseTimeFilterPostcodeSectorProperties> with _$ResponseTimeFilterPostcodeSectorPropertiesSerializer {

}

