import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_fares_fast.dart';
part 'response_time_filter_fast_properties.jser.dart';

class ResponseTimeFilterFastProperties {
  
  @Alias('travel_time')
  final int travelTime;
  
  @Alias('fares')
  final ResponseFaresFast fares;
  

  ResponseTimeFilterFastProperties(
    

{
     this.travelTime = null,  
     this.fares = null 
    
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterFastProperties[travelTime=$travelTime, fares=$fares, ]';
  }
}

@GenSerializer()
class ResponseTimeFilterFastPropertiesSerializer extends Serializer<ResponseTimeFilterFastProperties> with _$ResponseTimeFilterFastPropertiesSerializer {

}