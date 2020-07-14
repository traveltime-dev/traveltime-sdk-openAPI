            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_postcodes_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_postcode.g.dart';

abstract class ResponseTimeFilterPostcode implements Built<ResponseTimeFilterPostcode, ResponseTimeFilterPostcodeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'code')
    String get code;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterPostcodesProperties> get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterPostcode._();

    factory ResponseTimeFilterPostcode([updates(ResponseTimeFilterPostcodeBuilder b)]) = _$ResponseTimeFilterPostcode;
    static Serializer<ResponseTimeFilterPostcode> get serializer => _$responseTimeFilterPostcodeSerializer;
}

