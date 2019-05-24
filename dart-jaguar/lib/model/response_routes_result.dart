import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_routes_location.dart';

part 'response_routes_result.jser.dart';

class ResponseRoutesResult {
  
  @Alias('search_id')
  final String searchId;
  
  @Alias('locations')
  final List<ResponseRoutesLocation> locations;
  
  @Alias('unreachable')
  final List<String> unreachable;
  

  ResponseRoutesResult(
      

{
    
     this.searchId = null,  
     this.locations = const [],  
     this.unreachable = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseRoutesResult[searchId=$searchId, locations=$locations, unreachable=$unreachable, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseRoutesResultSerializer extends Serializer<ResponseRoutesResult> with _$ResponseRoutesResultSerializer {

}

