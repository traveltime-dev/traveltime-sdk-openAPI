import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

import 'package:openapi/model/request_time_filter_postcode_sectors_property.dart';

part 'request_time_filter_postcode_sectors_arrival_search.jser.dart';

class RequestTimeFilterPostcodeSectorsArrivalSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('arrival_time', isNullable: false,  )
  final DateTime arrivalTime;
  
  @Alias('reachable_postcodes_threshold', isNullable: false,  )
  final double reachablePostcodesThreshold;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestTimeFilterPostcodeSectorsProperty> properties;
  
  @Alias('range', isNullable: false,  )
  final RequestRangeFull range;
  

  RequestTimeFilterPostcodeSectorsArrivalSearch(
      

{
    
     this.id = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTime = null,  
     this.reachablePostcodesThreshold = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeSectorsArrivalSearch[id=$id, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodeSectorsArrivalSearchSerializer extends Serializer<RequestTimeFilterPostcodeSectorsArrivalSearch> with _$RequestTimeFilterPostcodeSectorsArrivalSearchSerializer {

}

