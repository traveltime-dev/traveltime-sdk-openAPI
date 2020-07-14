            import 'package:openapi/model/response_map_info_features.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_properties.g.dart';

abstract class ResponseGeocodingProperties implements Built<ResponseGeocodingProperties, ResponseGeocodingPropertiesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'label')
    String get label;
    
        @nullable
    @BuiltValueField(wireName: r'score')
    double get score;
    
        @nullable
    @BuiltValueField(wireName: r'house_number')
    String get houseNumber;
    
        @nullable
    @BuiltValueField(wireName: r'street')
    String get street;
    
        @nullable
    @BuiltValueField(wireName: r'region')
    String get region;
    
        @nullable
    @BuiltValueField(wireName: r'region_code')
    String get regionCode;
    
        @nullable
    @BuiltValueField(wireName: r'neighbourhood')
    String get neighbourhood;
    
        @nullable
    @BuiltValueField(wireName: r'county')
    String get county;
    
        @nullable
    @BuiltValueField(wireName: r'macroregion')
    String get macroregion;
    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'country')
    String get country;
    
        @nullable
    @BuiltValueField(wireName: r'country_code')
    String get countryCode;
    
        @nullable
    @BuiltValueField(wireName: r'continent')
    String get continent;
    
        @nullable
    @BuiltValueField(wireName: r'postcode')
    String get postcode;
    
        @nullable
    @BuiltValueField(wireName: r'features')
    ResponseMapInfoFeatures get features;

    // Boilerplate code needed to wire-up generated code
    ResponseGeocodingProperties._();

    factory ResponseGeocodingProperties([updates(ResponseGeocodingPropertiesBuilder b)]) = _$ResponseGeocodingProperties;
    static Serializer<ResponseGeocodingProperties> get serializer => _$responseGeocodingPropertiesSerializer;
}

