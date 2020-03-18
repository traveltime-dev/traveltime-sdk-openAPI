import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'coords.jser.dart';

class Coords {
  
  @Alias('lat', isNullable: false,  )
  final double lat;
  
  @Alias('lng', isNullable: false,  )
  final double lng;
  

  Coords(
      

{
    
     this.lat = null,  
     this.lng = null 
    }
  );

  @override
  String toString() {
    return 'Coords[lat=$lat, lng=$lng, ]';
  }
}

@GenSerializer(nullableFields: true)
class CoordsSerializer extends Serializer<Coords> with _$CoordsSerializer {

}

