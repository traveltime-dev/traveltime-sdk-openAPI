            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_postcode_sectors_result.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sectors.g.dart';

abstract class ResponseTimeFilterPostcodeSectors implements Built<ResponseTimeFilterPostcodeSectors, ResponseTimeFilterPostcodeSectorsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<ResponseTimeFilterPostcodeSectorsResult> get results;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeSectors._();

    factory ResponseTimeFilterPostcodeSectors([updates(ResponseTimeFilterPostcodeSectorsBuilder b)]) = _$ResponseTimeFilterPostcodeSectors;
    static Serializer<ResponseTimeFilterPostcodeSectors> get serializer => _$responseTimeFilterPostcodeSectorsSerializer;
}

