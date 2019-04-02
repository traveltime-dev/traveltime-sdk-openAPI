import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'response_box.jser.dart';

class ResponseBox {
  
  @Alias('min_lat')
  final double minLat;
  
  @Alias('max_lat')
  final double maxLat;
  
  @Alias('min_lng')
  final double minLng;
  
  @Alias('max_lng')
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

@GenSerializer()
class ResponseBoxSerializer extends Serializer<ResponseBox> with _$ResponseBoxSerializer {

}
