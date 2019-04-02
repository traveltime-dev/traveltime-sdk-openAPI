import 'package:jaguar_serializer/jaguar_serializer.dart';

import 'package:openapi/model/request_routes_property.dart';
import 'package:openapi/model/request_transportation.dart';
import 'package:openapi/model/request_range_full.dart';
part 'request_routes_arrival_search.jser.dart';

class RequestRoutesArrivalSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('departure_location_ids')
  final List<String> departureLocationIds;
  
  @Alias('arrival_location_id')
  final String arrivalLocationId;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('arrival_time')
  final DateTime arrivalTime;
  
  @Alias('properties')
  final List<RequestRoutesProperty> properties;
  
  @Alias('range')
  final RequestRangeFull range;
  

  RequestRoutesArrivalSearch(
    

{
    
     this.id = null,  
     this.departureLocationIds = const [],  
     this.arrivalLocationId = null,  
     this.transportation = null,  
     this.arrivalTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestRoutesArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer()
class RequestRoutesArrivalSearchSerializer extends Serializer<RequestRoutesArrivalSearch> with _$RequestRoutesArrivalSearchSerializer {

}
