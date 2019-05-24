import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_routes_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

part 'request_routes_departure_search.jser.dart';

class RequestRoutesDepartureSearch {
  
  @Alias('id')
  final String id;
  
  @Alias('departure_location_id')
  final String departureLocationId;
  
  @Alias('arrival_location_ids')
  final List<String> arrivalLocationIds;
  
  @Alias('transportation')
  final RequestTransportation transportation;
  
  @Alias('departure_time')
  final DateTime departureTime;
  
  @Alias('properties')
  final List<RequestRoutesProperty> properties;
  
  @Alias('range')
  final RequestRangeFull range;
  

  RequestRoutesDepartureSearch(
      

{
    
     this.id = null,  
     this.departureLocationId = null,  
     this.arrivalLocationIds = const [],  
     this.transportation = null,  
     this.departureTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestRoutesDepartureSearch[id=$id, departureLocationId=$departureLocationId, arrivalLocationIds=$arrivalLocationIds, transportation=$transportation, departureTime=$departureTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestRoutesDepartureSearchSerializer extends Serializer<RequestRoutesDepartureSearch> with _$RequestRoutesDepartureSearchSerializer {

}

