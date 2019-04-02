import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_location.dart';
part 'request_supported_locations.jser.dart';

class RequestSupportedLocations {
  
  @Alias('locations')
  final List<RequestLocation> locations;
  

  RequestSupportedLocations(
    

{
    
     this.locations = const [] 
    }
  );

  @override
  String toString() {
    return 'RequestSupportedLocations[locations=$locations, ]';
  }
}

@GenSerializer()
class RequestSupportedLocationsSerializer extends Serializer<RequestSupportedLocations> with _$RequestSupportedLocationsSerializer {

}
