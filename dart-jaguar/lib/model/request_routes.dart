import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/request_location.dart';

import 'package:openapi/model/request_routes_arrival_search.dart';

import 'package:openapi/model/request_routes_departure_search.dart';

part 'request_routes.jser.dart';

class RequestRoutes {
  
  @Alias('locations', isNullable: false,  )
  final List<RequestLocation> locations;
  
  @Alias('departure_searches', isNullable: false,  )
  final List<RequestRoutesDepartureSearch> departureSearches;
  
  @Alias('arrival_searches', isNullable: false,  )
  final List<RequestRoutesArrivalSearch> arrivalSearches;
  

  RequestRoutes(
      

{
    
     this.locations = const [],   this.departureSearches = const [],  
     this.arrivalSearches = const [] 
    
    }
  );

  @override
  String toString() {
    return 'RequestRoutes[locations=$locations, departureSearches=$departureSearches, arrivalSearches=$arrivalSearches, ]';
  }
}

@GenSerializer(nullableFields: true)
class RequestRoutesSerializer extends Serializer<RequestRoutes> with _$RequestRoutesSerializer {

}

