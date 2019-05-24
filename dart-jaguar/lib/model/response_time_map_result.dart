import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_map_properties.dart';

import 'package:openapi/model/response_shape.dart';

part 'response_time_map_result.jser.dart';

class ResponseTimeMapResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('shapes')
  final List<ResponseShape> shapes;
  
  @Alias('properties')
  final ResponseTimeMapProperties properties;
  

  ResponseTimeMapResult(
      

{
    
     this.searchId = null,  
     this.shapes = const [],  
     this.properties = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapResult[searchId=$searchId, shapes=$shapes, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeMapResultSerializer extends Serializer<ResponseTimeMapResult> with _$ResponseTimeMapResultSerializer {

}

