import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_location.dart';

part 'response_time_filter_result.jser.dart';

class ResponseTimeFilterResult {
  
  @Alias('search_id', isNullable: false,  )
  final String searchId;
  
  @Alias('locations', isNullable: false,  )
  final List<ResponseTimeFilterLocation> locations;
  
  @Alias('unreachable', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class ResponseTimeFilterResultSerializer extends Serializer<ResponseTimeFilterResult> with _$ResponseTimeFilterResultSerializer {

}

