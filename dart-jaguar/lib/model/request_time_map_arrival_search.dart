import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_range_no_max_results.dart';

import 'package:openapi/model/request_time_map_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_level_of_detail.dart';

import 'package:openapi/model/coords.dart';

part 'request_time_map_arrival_search.jser.dart';

class RequestTimeMapArrivalSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('coords', isNullable: false,  )
  final Coords coords;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('arrival_time', isNullable: false,  )
  final DateTime arrivalTime;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestTimeMapProperty> properties;
  
  @Alias('range', isNullable: false,  )
  final RequestRangeNoMaxResults range;
  
  @Alias('level_of_detail', isNullable: false,  )
  final RequestLevelOfDetail levelOfDetail;
  

  RequestTimeMapArrivalSearch(
      

{
    
     this.id = null,  
     this.coords = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.arrivalTime = null,   this.properties = const [],  
     this.range = null,  
     this.levelOfDetail = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeMapArrivalSearch[id=$id, coords=$coords, transportation=$transportation, travelTime=$travelTime, arrivalTime=$arrivalTime, properties=$properties, range=$range, levelOfDetail=$levelOfDetail, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeMapArrivalSearchSerializer extends Serializer<RequestTimeMapArrivalSearch> with _$RequestTimeMapArrivalSearchSerializer {

}

