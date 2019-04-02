import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/coords.dart';
part 'response_shape.jser.dart';

class ResponseShape {
  
  @Alias('shell')
  final List<Coords> shell;
  
  @Alias('holes')
  final List<List<Coords>> holes;
  

  ResponseShape(
    

{
    
     this.shell = const [],  
     this.holes = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseShape[shell=$shell, holes=$holes, ]';
  }
}

@GenSerializer()
class ResponseShapeSerializer extends Serializer<ResponseShape> with _$ResponseShapeSerializer {

}
