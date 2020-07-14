        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_supported_location.g.dart';

abstract class ResponseSupportedLocation implements Built<ResponseSupportedLocation, ResponseSupportedLocationBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'map_name')
    String get mapName;

    // Boilerplate code needed to wire-up generated code
    ResponseSupportedLocation._();

    factory ResponseSupportedLocation([updates(ResponseSupportedLocationBuilder b)]) = _$ResponseSupportedLocation;
    static Serializer<ResponseSupportedLocation> get serializer => _$responseSupportedLocationSerializer;
}

