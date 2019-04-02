import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'response_geocoding_geometry.jser.dart';

class ResponseGeocodingGeometry {
  
  @Alias('type')
  final String type;
  
  @Alias('coordinates')
  final List<double> coordinates;
  

  ResponseGeocodingGeometry(
    

{
    
     this.type = null,  
     this.coordinates = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseGeocodingGeometry[type=$type, coordinates=$coordinates, ]';
  }
}

@GenSerializer()
class ResponseGeocodingGeometrySerializer extends Serializer<ResponseGeocodingGeometry> with _$ResponseGeocodingGeometrySerializer {

}
