import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_range_full.jser.dart';

class RequestRangeFull {
  
  @Alias('enabled', isNullable: false,  )
  final bool enabled;
  
  @Alias('max_results', isNullable: false,  )
  final int maxResults;
  
  @Alias('width', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class RequestRangeFullSerializer extends Serializer<RequestRangeFull> with _$RequestRangeFullSerializer {

}

