import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_range_no_max_results.jser.dart';

class RequestRangeNoMaxResults {
  
  @Alias('enabled', isNullable: false,  )
  final bool enabled;
  
  @Alias('width', isNullable: false,  )
  final int width;
  

  RequestRangeNoMaxResults(
      

{
    
     this.enabled = null,  
     this.width = null 
    }
  );

  @override
  String toString() {
    return 'RequestRangeNoMaxResults[enabled=$enabled, width=$width, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestRangeNoMaxResultsSerializer extends Serializer<RequestRangeNoMaxResults> with _$RequestRangeNoMaxResultsSerializer {

}

