import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_filter_postcodes_properties.dart';

part 'response_time_filter_postcode.jser.dart';

class ResponseTimeFilterPostcode {
  
  @Alias('code')
  final String code;
  
  @Alias('properties')
  final List<ResponseTimeFilterPostcodesProperties> properties;
  

  ResponseTimeFilterPostcode(
      

{
    
     this.code = null,  
     this.properties = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseTimeFilterPostcode[code=$code, properties=$properties, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseTimeFilterPostcodeSerializer extends Serializer<ResponseTimeFilterPostcode> with _$ResponseTimeFilterPostcodeSerializer {

}

