import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_fast_location.dart';

part 'response_time_filter_fast_result.jser.dart';

class ResponseTimeFilterFastResult {
  
  @Alias('search_id', isNullable: false,  )
  final String searchId;
  
  @Alias('locations', isNullable: false,  )
  final List<ResponseTimeFilterFastLocation> locations;
  
  @Alias('unreachable', isNullable: false,  )
  final List<String> unreachable;
  

  ResponseTimeFilterFastResult(
      

{
    
     this.searchId = null,  
     this.locations = const [],  
     this.unreachable = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterFastResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterFastResultSerializer extends Serializer<ResponseTimeFilterFastResult> with _$ResponseTimeFilterFastResultSerializer {

}

