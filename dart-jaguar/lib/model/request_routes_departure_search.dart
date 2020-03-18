import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_routes_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

part 'request_routes_departure_search.jser.dart';

class RequestRoutesDepartureSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('departure_location_id', isNullable: false,  )
  final String departureLocationId;
  
  @Alias('arrival_location_ids', isNullable: false,  )
  final List<String> arrivalLocationIds;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('departure_time', isNullable: false,  )
  final DateTime departureTime;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestRoutesProperty> properties;
  
  @Alias('range', isNullable: false,  )
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

