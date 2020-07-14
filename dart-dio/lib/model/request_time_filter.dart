            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_departure_search.dart';
            import 'package:openapi/model/request_location.dart';
            import 'package:openapi/model/request_time_filter_arrival_search.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter.g.dart';

abstract class RequestTimeFilter implements Built<RequestTimeFilter, RequestTimeFilterBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterArrivalSearch> get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilter._();

    factory RequestTimeFilter([updates(RequestTimeFilterBuilder b)]) = _$RequestTimeFilter;
    static Serializer<RequestTimeFilter> get serializer => _$requestTimeFilterSerializer;
}

