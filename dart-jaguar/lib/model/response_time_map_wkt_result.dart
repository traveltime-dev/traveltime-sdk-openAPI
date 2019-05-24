import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_map_properties.dart';

part 'response_time_map_wkt_result.jser.dart';

class ResponseTimeMapWktResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('shape')
  final String shape;
  
  @Alias('properties')
  final ResponseTimeMapProperties properties;
  

  ResponseTimeMapWktResult(
      

{
    
     this.searchId = null,  
     this.shape = null,  
     this.properties = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapWktResult[searchId=$searchId, shape=$shape, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMapWktResultSerializer extends Serializer<ResponseTimeMapWktResult> with _$ResponseTimeMapWktResultSerializer {

}

