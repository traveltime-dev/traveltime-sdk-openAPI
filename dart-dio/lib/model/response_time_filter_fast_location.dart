            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_fast_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_fast_location.g.dart';

abstract class ResponseTimeFilterFastLocation implements Built<ResponseTimeFilterFastLocation, ResponseTimeFilterFastLocationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterFastProperties> get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterFastLocation._();

    factory ResponseTimeFilterFastLocation([updates(ResponseTimeFilterFastLocationBuilder b)]) = _$ResponseTimeFilterFastLocation;
    static Serializer<ResponseTimeFilterFastLocation> get serializer => _$responseTimeFilterFastLocationSerializer;
}

