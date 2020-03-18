import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_geocoding_geometry.jser.dart';

class ResponseGeocodingGeometry {
  
  @Alias('type', isNullable: false,  )
  final String type;
  
  @Alias('coordinates', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class ResponseGeocodingGeometrySerializer extends Serializer<ResponseGeocodingGeometry> with _$ResponseGeocodingGeometrySerializer {

}

