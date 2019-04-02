import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_routes_result.dart';
part 'response_routes.jser.dart';

class ResponseRoutes {
  
  @Alias('results')
  final List<ResponseRoutesResult> results;
  

  ResponseRoutes(
    

{
    
     this.results = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseRoutes[results=$results, ]';
  }
}

@GenSerializer()
class ResponseRoutesSerializer extends Serializer<ResponseRoutes> with _$ResponseRoutesSerializer {

}
