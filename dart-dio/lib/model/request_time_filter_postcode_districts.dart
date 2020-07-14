            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_postcode_districts_departure_search.dart';
            import 'package:openapi/model/request_time_filter_postcode_districts_arrival_search.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_postcode_districts.g.dart';

abstract class RequestTimeFilterPostcodeDistricts implements Built<RequestTimeFilterPostcodeDistricts, RequestTimeFilterPostcodeDistrictsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'departure_searches')
    BuiltList<RequestTimeFilterPostcodeDistrictsDepartureSearch> get departureSearches;
    
        @nullable
    @BuiltValueField(wireName: r'arrival_searches')
    BuiltList<RequestTimeFilterPostcodeDistrictsArrivalSearch> get arrivalSearches;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterPostcodeDistricts._();

    factory RequestTimeFilterPostcodeDistricts([updates(RequestTimeFilterPostcodeDistrictsBuilder b)]) = _$RequestTimeFilterPostcodeDistricts;
    static Serializer<RequestTimeFilterPostcodeDistricts> get serializer => _$requestTimeFilterPostcodeDistrictsSerializer;
}

