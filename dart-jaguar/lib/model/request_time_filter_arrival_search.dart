import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

part 'request_time_filter_arrival_search.jser.dart';

class RequestTimeFilterArrivalSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('departure_location_ids', isNullable: false,  )
  final List<String> departureLocationIds;
  
  @Alias('arrival_location_id', isNullable: false,  )
  final String arrivalLocationId;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('arrival_time', isNullable: false,  )
  final DateTime arrivalTime;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestTimeFilterProperty> properties;
  
  @Alias('range', isNullable: false,  )
  final RequestRangeFull range;
  

  RequestTimeFilterArrivalSearch(
      

{
    
     this.id = null,  
     this.departureLocationIds = const [],  
     this.arrivalLocationId = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTime = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterArrivalSearch[id=$id, departureLocationIds=$departureLocationIds, arrivalLocationId=$arrivalLocationId, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterArrivalSearchSerializer extends Serializer<RequestTimeFilterArrivalSearch> with _$RequestTimeFilterArrivalSearchSerializer {

}

