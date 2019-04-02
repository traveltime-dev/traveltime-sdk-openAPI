import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/response_fare_ticket.dart';
part 'response_fares_fast.jser.dart';

class ResponseFaresFast {
  
  @Alias('tickets_total')
  final List<ResponseFareTicket> ticketsTotal;
  

  ResponseFaresFast(
    

{
    
     this.ticketsTotal = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseFaresFast[ticketsTotal=$ticketsTotal, ]';
  }
}

@GenSerializer()
class ResponseFaresFastSerializer extends Serializer<ResponseFaresFast> with _$ResponseFaresFastSerializer {

}
