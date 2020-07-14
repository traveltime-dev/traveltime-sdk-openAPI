            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_postcode_sectors_departure_search.dart';
            import 'package:openapi/model/request_time_filter_postcode_sectors_arrival_search.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_sectors.g.dart';

abstract class RequestTimeFilterPostcodeSectors implements Built<RequestTimeFilterPostcodeSectors, RequestTimeFilterPostcodeSectorsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodeSectorsDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodeSectorsArrivalSearch> get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterPostcodeSectors._();

    factory RequestTimeFilterPostcodeSectors([updates(RequestTimeFilterPostcodeSectorsBuilder b)]) = _$RequestTimeFilterPostcodeSectors;
    static Serializer<RequestTimeFilterPostcodeSectors> get serializer => _$requestTimeFilterPostcodeSectorsSerializer;
}

