            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_time_filter_properties.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_time_filter_location.g.dart';

abstract class ResponseTimeFilterLocation implements Built<ResponseTimeFilterLocation, ResponseTimeFilterLocationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'properties')
    BuiltList<ResponseTimeFilterProperties> get properties;

    // Boilerplate code needed to wire-up generated code
    ResponseTimeFilterLocation._();

    factory ResponseTimeFilterLocation([updates(ResponseTimeFilterLocationBuilder b)]) = _$ResponseTimeFilterLocation;
    static Serializer<ResponseTimeFilterLocation> get serializer => _$responseTimeFilterLocationSerializer;
}

