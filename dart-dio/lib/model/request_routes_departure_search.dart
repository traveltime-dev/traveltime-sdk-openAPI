            import 'package:openapi/model/request_range_full.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_routes_property.dart';
            import 'package:openapi/model/request_transportation.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_routes_departure_search.g.dart';

abstract class RequestRoutesDepartureSearch implements Built<RequestRoutesDepartureSearch, RequestRoutesDepartureSearchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'departure_location_id')
    String get departureLocationId;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_location_ids')
    BuiltList<String> get arrivalLocationIds;
    
        @nullable
    @BuiltValueField(wireName: r'transportation')
    RequestTransportation get transportation;
    
        @nullable
    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestRoutesProperty> get properties;
    
        @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    // Boilerplate code needed to wire-up generated code
    RequestRoutesDepartureSearch._();

    factory RequestRoutesDepartureSearch([updates(RequestRoutesDepartureSearchBuilder b)]) = _$RequestRoutesDepartureSearch;
    static Serializer<RequestRoutesDepartureSearch> get serializer => _$requestRoutesDepartureSearchSerializer;
}

