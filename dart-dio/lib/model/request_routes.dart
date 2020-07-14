            import 'package:openapi/model/request_routes_arrival_search.dart';
            import 'package:openapi/model/request_routes_departure_search.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_location.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes.g.dart';

abstract class RequestRoutes implements Built<RequestRoutes, RequestRoutesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestRoutesDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestRoutesArrivalSearch> get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestRoutes._();

    factory RequestRoutes([updates(RequestRoutesBuilder b)]) = _$RequestRoutes;
    static Serializer<RequestRoutes> get serializer => _$requestRoutesSerializer;
}

