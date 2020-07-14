            import 'package:openapi/model/request_transportation_fast.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_fast_property.dart';
            import 'package:openapi/model/request_arrival_time_period.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast_arrival_many_to_one_search.g.dart';

abstract class RequestTimeFilterFastArrivalManyToOneSearch implements Built<RequestTimeFilterFastArrivalManyToOneSearch, RequestTimeFilterFastArrivalManyToOneSearchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_location_id')
    String get arrivalLocationId;
    
        @nullable
    @BuiltValueField(wireName: r'departure_location_ids')
    BuiltList<String> get departureLocationIds;
    
        @nullable
    @BuiltValueField(wireName: r'transportation')
    RequestTransportationFast get transportation;
    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_time_period')
    RequestArrivalTimePeriod get arrivalTimePeriod;
        //enum arrivalTimePeriodEnum {  weekday_morning,  };
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<RequestTimeFilterFastProperty> get properties;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterFastArrivalManyToOneSearch._();

    factory RequestTimeFilterFastArrivalManyToOneSearch([updates(RequestTimeFilterFastArrivalManyToOneSearchBuilder b)]) = _$RequestTimeFilterFastArrivalManyToOneSearch;
    static Serializer<RequestTimeFilterFastArrivalManyToOneSearch> get serializer => _$requestTimeFilterFastArrivalManyToOneSearchSerializer;
}

