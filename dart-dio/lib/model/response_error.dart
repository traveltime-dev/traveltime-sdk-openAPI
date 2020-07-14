            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_error.g.dart';

abstract class ResponseError implements Built<ResponseError, ResponseErrorBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'http_status')
    int get httpStatus;
    
        @nullable
    @BuiltValueField(wireName: r'error_code')
    int get errorCode;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'documentation_link')
    String get documentationLink;
    
        @nullable
    @BuiltValueField(wireName: r'additional_info')
    BuiltMap<String, BuiltList<String>> get additionalInfo;

    // Boilerplate code needed to wire-up generated code
    ResponseError._();

    factory ResponseError([updates(ResponseErrorBuilder b)]) = _$ResponseError;
    static Serializer<ResponseError> get serializer => _$responseErrorSerializer;
}

