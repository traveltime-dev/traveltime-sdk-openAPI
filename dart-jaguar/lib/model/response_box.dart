import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_box.jser.dart';

class ResponseBox {
  
  @Alias('min_lat', isNullable: false,  )
  final double minLat;
  
  @Alias('max_lat', isNullable: false,  )
  final double maxLat;
  
  @Alias('min_lng', isNullable: false,  )
  final double minLng;
  
  @Alias('max_lng', isNullable: false,  )
  final double maxLng;
  

  ResponseBox(
      

{
    
     this.minLat = null,  
     this.maxLat = null,  
     this.minLng = null,  
     this.maxLng = null 
    }
  );

  @override
  String toString() {
    return 'ResponseBox[minLat=$minLat, maxLat=$maxLat, minLng=$minLng, maxLng=$maxLng, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseBoxSerializer extends Serializer<ResponseBox> with _$ResponseBoxSerializer {

}

