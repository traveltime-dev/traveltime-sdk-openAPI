import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_fare_ticket.dart';

import 'package:openapi/model/response_fares_breakdown_item.dart';

part 'response_fares.jser.dart';

class ResponseFares {
  
  @Alias('breakdown', isNullable: false,  )
  final List<ResponseFaresBreakdownItem> breakdown;
  
  @Alias('tickets_total', isNullable: false,  )
  final List<ResponseFareTicket> ticketsTotal;
  

  ResponseFares(
      

{
    
     this.breakdown = const [],  
     this.ticketsTotal = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseFares[breakdown=$breakdown, ticketsTotal=$ticketsTotal, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseFaresSerializer extends Serializer<ResponseFares> with _$ResponseFaresSerializer {

}

