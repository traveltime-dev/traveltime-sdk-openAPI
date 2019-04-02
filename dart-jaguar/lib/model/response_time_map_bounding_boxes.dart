import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_time_map_bounding_boxes_result.dart';
part 'response_time_map_bounding_boxes.jser.dart';

class ResponseTimeMapBoundingBoxes {
  
  @Alias('results')
  final List<ResponseTimeMapBoundingBoxesResult> results;
  

  ResponseTimeMapBoundingBoxes(
    

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeMapBoundingBoxes[results=$results, ]';
  }
}

@GenSerializer()
class ResponseTimeMapBoundingBoxesSerializer extends Serializer<ResponseTimeMapBoundingBoxes> with _$ResponseTimeMapBoundingBoxesSerializer {

}
