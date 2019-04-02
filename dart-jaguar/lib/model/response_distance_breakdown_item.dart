import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_transportation_mode.dart';
part 'response_distance_breakdown_item.jser.dart';

class ResponseDistanceBreakdownItem {
  
  @Alias('mode')
  final ResponseTransportationMode mode;
  
  @Alias('distance')
  final int distance;
  

  ResponseDistanceBreakdownItem(
    

{
    
     this.mode = null,  
     this.distance = null 
    }
  );

  @override
  String toString() {
    return 'ResponseDistanceBreakdownItem[mode=$mode, distance=$distance, ]';
  }
}

@GenSerializer()
class ResponseDistanceBreakdownItemSerializer extends Serializer<ResponseDistanceBreakdownItem> with _$ResponseDistanceBreakdownItemSerializer {

}
