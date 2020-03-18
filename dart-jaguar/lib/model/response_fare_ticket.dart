import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_fare_ticket.jser.dart';

class ResponseFareTicket {
  
  @Alias('type', isNullable: false,
          
  )
  final String type;
  //enum typeEnum {  single,  week,  month,  year,  };
  @Alias('price', isNullable: false,  )
  final double price;
  
  @Alias('currency', isNullable: false,  )
  final String currency;
  

  ResponseFareTicket(
      

{
    
     this.type = null,  
     this.price = null,  
     this.currency = null 
    }
  );

  @override
  String toString() {
    return 'ResponseFareTicket[type=$type, price=$price, currency=$currency, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseFareTicketSerializer extends Serializer<ResponseFareTicket> with _$ResponseFareTicketSerializer {

}

