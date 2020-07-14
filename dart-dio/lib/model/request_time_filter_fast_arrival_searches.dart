            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_time_filter_fast_arrival_many_to_one_search.dart';
            import 'package:openapi/model/request_time_filter_fast_arrival_one_to_many_search.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast_arrival_searches.g.dart';

abstract class RequestTimeFilterFastArrivalSearches implements Built<RequestTimeFilterFastArrivalSearches, RequestTimeFilterFastArrivalSearchesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'many_to_one')
    BuiltList<RequestTimeFilterFastArrivalManyToOneSearch> get manyToOne;
    
        @nullable
    @BuiltValueField(wireName: r'one_to_many')
    BuiltList<RequestTimeFilterFastArrivalOneToManySearch> get oneToMany;

    // Boilerplate code needed to wire-up generated code
    RequestTimeFilterFastArrivalSearches._();

    factory RequestTimeFilterFastArrivalSearches([updates(RequestTimeFilterFastArrivalSearchesBuilder b)]) = _$RequestTimeFilterFastArrivalSearches;
    static Serializer<RequestTimeFilterFastArrivalSearches> get serializer => _$requestTimeFilterFastArrivalSearchesSerializer;
}

