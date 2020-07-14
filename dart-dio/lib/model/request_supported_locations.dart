            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/request_location.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_supported_locations.g.dart';

abstract class RequestSupportedLocations implements Built<RequestSupportedLocations, RequestSupportedLocationsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'locations')
    BuiltList<RequestLocation> get locations;

    // Boilerplate code needed to wire-up generated code
    RequestSupportedLocations._();

    factory RequestSupportedLocations([updates(RequestSupportedLocationsBuilder b)]) = _$RequestSupportedLocations;
    static Serializer<RequestSupportedLocations> get serializer => _$requestSupportedLocationsSerializer;
}

