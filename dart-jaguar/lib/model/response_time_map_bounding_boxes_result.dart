import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_bounding_box.dart';
import 'package:openapi/model/response_time_map_properties.dart';
part 'response_time_map_bounding_boxes_result.jser.dart';

class ResponseTimeMapBoundingBoxesResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('bounding_boxes')
  final List<ResponseBoundingBox> boundingBoxes;
  
  @Alias('properties')
  final ResponseTimeMapProperties properties;
  

  ResponseTimeMapBoundingBoxesResult(
    

{
    
     this.searchId = null,  
     this.boundingBoxes = const [],  
     this.properties = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapBoundingBoxesResult[searchId=$searchId, boundingBoxes=$boundingBoxes, properties=$properties, ]';
  }
}

@GenSerializer()
class ResponseTimeMapBoundingBoxesResultSerializer extends Serializer<ResponseTimeMapBoundingBoxesResult> with _$ResponseTimeMapBoundingBoxesResultSerializer {

}
