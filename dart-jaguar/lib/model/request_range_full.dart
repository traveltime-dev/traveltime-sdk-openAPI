import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'request_range_full.jser.dart';

class RequestRangeFull {
  
  @Alias('enabled')
  final bool enabled;
  
  @Alias('max_results')
  final int maxResults;
  
  @Alias('width')
  final int width;
  

  RequestRangeFull(
    

{
    
     this.enabled = null,  
     this.maxResults = null,  
     this.width = null 
    }
  );

  @override
  String toString() {
    return 'RequestRangeFull[enabled=$enabled, maxResults=$maxResults, width=$width, ]';
  }
}

@GenSerializer()
class RequestRangeFullSerializer extends Serializer<RequestRangeFull> with _$RequestRangeFullSerializer {

}
