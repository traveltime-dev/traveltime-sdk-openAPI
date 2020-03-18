import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/coords.dart';

part 'response_shape.jser.dart';

class ResponseShape {
  
  @Alias('shell', isNullable: false,  )
  final List<Coords> shell;
  
  @Alias('holes', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class ResponseShapeSerializer extends Serializer<ResponseShape> with _$ResponseShapeSerializer {

}

