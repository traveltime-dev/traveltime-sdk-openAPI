            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_postcode_sector.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sectors_result.g.dart';

abstract class ResponseTimeFilterPostcodeSectorsResult implements Built<ResponseTimeFilterPostcodeSectorsResult, ResponseTimeFilterPostcodeSectorsResultBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'search_id')
    String get searchId;
    
        @nullable
    @BuiltValueField(wireName: r'sectors')
    BuiltList<ResponseTimeFilterPostcodeSector> get sectors;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeSectorsResult._();

    factory ResponseTimeFilterPostcodeSectorsResult([updates(ResponseTimeFilterPostcodeSectorsResultBuilder b)]) = _$ResponseTimeFilterPostcodeSectorsResult;
    static Serializer<ResponseTimeFilterPostcodeSectorsResult> get serializer => _$responseTimeFilterPostcodeSectorsResultSerializer;
}

