import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_time_filter_postcode_sector_properties.dart';
part 'response_time_filter_postcode_sector.jser.dart';

class ResponseTimeFilterPostcodeSector {
  
  @Alias('code')
  final String code;
  
  @Alias('properties')
  final ResponseTimeFilterPostcodeSectorProperties properties;
  

  ResponseTimeFilterPostcodeSector(
    

{
    
     this.code = null,  
     this.properties = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcodeSector[code=$code, properties=$properties, ]';
  }
}

@GenSerializer()
class ResponseTimeFilterPostcodeSectorSerializer extends Serializer<ResponseTimeFilterPostcodeSector> with _$ResponseTimeFilterPostcodeSectorSerializer {

}
