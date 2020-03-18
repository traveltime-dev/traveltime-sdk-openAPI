import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_transportation_mode.dart';

import 'package:openapi/model/response_fare_ticket.dart';

part 'response_fares_breakdown_item.jser.dart';

class ResponseFaresBreakdownItem {
  
  @Alias('modes', isNullable: false,  )
  final List<ResponseTransportationMode> modes;
  
  @Alias('route_part_ids', isNullable: false,  )
  final List<int> routePartIds;
  
  @Alias('tickets', isNullable: false,  )
  final List<ResponseFareTicket> tickets;
  

  ResponseFaresBreakdownItem(
      

{
    
     this.modes = const [],  
     this.routePartIds = const [],  
     this.tickets = const [] 
    }
  );

  @override
  String toString() {
    return 'ResponseFaresBreakdownItem[modes=$modes, routePartIds=$routePartIds, tickets=$tickets, ]';
  }
}

@GenSerializer(nullableFields: true)
class ResponseFaresBreakdownItemSerializer extends Serializer<ResponseFaresBreakdownItem> with _$ResponseFaresBreakdownItemSerializer {

}

