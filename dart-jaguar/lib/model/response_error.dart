import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_error.jser.dart';

class ResponseError {
  
  @Alias('http_status', isNullable: false,  )
  final int httpStatus;
  
  @Alias('error_code', isNullable: false,  )
  final int errorCode;
  
  @Alias('description', isNullable: false,  )
  final String description;
  
  @Alias('documentation_link', isNullable: false,  )
  final String documentationLink;
  
  @Alias('additional_info', isNullable: false,  )
  final Map<String, List<String>> additionalInfo;
  

  ResponseError(
      

{
     this.httpStatus = null,  
     this.errorCode = null,  
     this.description = null,  
     this.documentationLink = null,  
     this.additionalInfo = const {} 
    
    }
  );

  @override
  String toString() {
    return 'ResponseError[httpStatus=$httpStatus, errorCode=$errorCode, description=$description, documentationLink=$documentationLink, additionalInfo=$additionalInfo, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseErrorSerializer extends Serializer<ResponseError> with _$ResponseErrorSerializer {

}

