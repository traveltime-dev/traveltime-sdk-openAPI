            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_supported_location.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_supported_locations.g.dart';

abstract class ResponseSupportedLocations implements Built<ResponseSupportedLocations, ResponseSupportedLocationsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseSupportedLocation> get locations;
    
        @nullable
    @BuiltValueField(wireName: r'unsupported_locations')
    BuiltList<String> get unsupportedLocations;

    // Boilerplate code needed to wire-up generated code
    ResponseSupportedLocations._();

    factory ResponseSupportedLocations([updates(ResponseSupportedLocationsBuilder b)]) = _$ResponseSupportedLocations;
    static Serializer<ResponseSupportedLocations> get serializer => _$responseSupportedLocationsSerializer;
}

