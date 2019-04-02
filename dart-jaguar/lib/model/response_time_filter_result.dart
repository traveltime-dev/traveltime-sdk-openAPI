import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_time_filter_location.dart';
part 'response_time_filter_result.jser.dart';

class ResponseTimeFilterResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('locations')
  final List<ResponseTimeFilterLocation> locations;
  
  @Alias('unreachable')
  final List<String> unreachable;
  

  ResponseTimeFilterResult(
    

{
    
     this.searchId = null,  
     this.locations = const [],  
     this.unreachable = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }
}

@GenSerializer()
class ResponseTimeFilterResultSerializer extends Serializer<ResponseTimeFilterResult> with _$ResponseTimeFilterResultSerializer {

}
