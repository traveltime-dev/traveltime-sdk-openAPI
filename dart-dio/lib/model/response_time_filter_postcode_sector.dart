            import 'package:openapi/model/response_time_filter_postcode_sector_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode_sector.g.dart';

abstract class ResponseTimeFilterPostcodeSector implements Built<ResponseTimeFilterPostcodeSector, ResponseTimeFilterPostcodeSectorBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'code')
    String get code;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    ResponseTimeFilterPostcodeSectorProperties get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcodeSector._();

    factory ResponseTimeFilterPostcodeSector([updates(ResponseTimeFilterPostcodeSectorBuilder b)]) = _$ResponseTimeFilterPostcodeSector;
    static Serializer<ResponseTimeFilterPostcodeSector> get serializer => _$responseTimeFilterPostcodeSectorSerializer;
}

