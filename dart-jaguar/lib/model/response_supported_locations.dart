import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_supported_location.dart';

part 'response_supported_locations.jser.dart';

class ResponseSupportedLocations {
  
  @Alias('locations')
  final List<ResponseSupportedLocation> locations;
  
  @Alias('unsupported_locations')
  final List<String> unsupportedLocations;
  

  ResponseSupportedLocations(
      

{
    
     this.locations = const [],  
     this.unsupportedLocations = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseSupportedLocations[locations=$locations, unsupportedLocations=$unsupportedLocations, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseSupportedLocationsSerializer extends Serializer<ResponseSupportedLocations> with _$ResponseSupportedLocationsSerializer {

}

