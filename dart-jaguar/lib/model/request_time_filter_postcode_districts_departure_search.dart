import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_time_filter_postcode_districts_property.dart';

import 'package:openapi/model/request_transportation.dart';

import 'package:openapi/model/request_range_full.dart';

part 'request_time_filter_postcode_districts_departure_search.jser.dart';

class RequestTimeFilterPostcodeDistrictsDepartureSearch {
  
  @Alias('id', isNullable: false,  )
  final String id;
  
  @Alias('transportation', isNullable: false,  )
  final RequestTransportation transportation;
  
  @Alias('travel_time', isNullable: false,  )
  final int travelTime;
  
  @Alias('departure_time', isNullable: false,  )
  final DateTime departureTime;
  
  @Alias('reachable_postcodes_threshold', isNullable: false,  )
  final double reachablePostcodesThreshold;
  
  @Alias('properties', isNullable: false,  )
  final List<RequestTimeFilterPostcodeDistrictsProperty> properties;
  
  @Alias('range', isNullable: false,  )
  final RequestRangeFull range;
  

  RequestTimeFilterPostcodeDistrictsDepartureSearch(
      

{
    
     this.id = null,  
     this.transportation = null,  
     this.travelTime = null,  
     this.departureTime = null,  
     this.reachablePostcodesThreshold = null,  
     this.properties = const [],   this.range = null 
    
    }
  );

  @override
  String toString() {
    return 'RequestTimeFilterPostcodeDistrictsDepartureSearch[id=$id, transportation=$transportation, travelTime=$travelTime, departureTime=$departureTime, reachablePostcodesThreshold=$reachablePostcodesThreshold, properties=$properties, range=$range, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestTimeFilterPostcodeDistrictsDepartureSearchSerializer extends Serializer<RequestTimeFilterPostcodeDistrictsDepartureSearch> with _$RequestTimeFilterPostcodeDistrictsDepartureSearchSerializer {

}

