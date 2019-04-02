import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'response_supported_location.jser.dart';

class ResponseSupportedLocation {
  
  @Alias('id')
  final String id;
  
  @Alias('map_name')
  final String mapName;
  

  ResponseSupportedLocation(
    

{
    
     this.id = null,  
     this.mapName = null 
    }
  );

  @override
  String toString() {
    return 'ResponseSupportedLocation[id=$id, mapName=$mapName, ]';
  }
}

@GenSerializer()
class ResponseSupportedLocationSerializer extends Serializer<ResponseSupportedLocation> with _$ResponseSupportedLocationSerializer {

}
