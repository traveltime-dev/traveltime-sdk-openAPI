            import 'package:openapi/model/request_range_full.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_property.dart';
            import 'package:openapi/model/request_transportation.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_departure_search.g.dart';

abstract class RequestTimeFilterDepartureSearch implements Built<RequestTimeFilterDepartureSearch, RequestTimeFilterDepartureSearchBuilder> {

    
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
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'departure_time')
    DateTime get departureTime;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterProperty> get properties;
    
        @nullable
    @BuiltValueField(wireName: r'range')
    RequestRangeFull get range;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterDepartureSearch._();

    factory RequestTimeFilterDepartureSearch([updates(RequestTimeFilterDepartureSearchBuilder b)]) = _$RequestTimeFilterDepartureSearch;
    static Serializer<RequestTimeFilterDepartureSearch> get serializer => _$requestTimeFilterDepartureSearchSerializer;
}

