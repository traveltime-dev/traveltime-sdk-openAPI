//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_map_info_features.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_properties.g.dart';

abstract class ResponseGeocodingProperties implements Built<ResponseGeocodingProperties, ResponseGeocodingPropertiesBuilder> {

    @BuiltValueField(wireName: r'name')
    String get name;

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

    ResponseGeocodingProperties._();

    static void _initializeBuilder(ResponseGeocodingPropertiesBuilder b) => b;

    factory ResponseGeocodingProperties([void updates(ResponseGeocodingPropertiesBuilder b)]) = _$ResponseGeocodingProperties;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseGeocodingProperties> get serializer => _$ResponseGeocodingPropertiesSerializer();
}

class _$ResponseGeocodingPropertiesSerializer implements StructuredSerializer<ResponseGeocodingProperties> {

    @override
    final Iterable<Type> types = const [ResponseGeocodingProperties, _$ResponseGeocodingProperties];
    @override
    final String wireName = r'ResponseGeocodingProperties';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseGeocodingProperties object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'label')
            ..add(serializers.serialize(object.label,
                specifiedType: const FullType(String)));
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(double)));
        }
        if (object.houseNumber != null) {
            result
                ..add(r'house_number')
                ..add(serializers.serialize(object.houseNumber,
                    specifiedType: const FullType(String)));
        }
        if (object.street != null) {
            result
                ..add(r'street')
                ..add(serializers.serialize(object.street,
                    specifiedType: const FullType(String)));
        }
        if (object.region != null) {
            result
                ..add(r'region')
                ..add(serializers.serialize(object.region,
                    specifiedType: const FullType(String)));
        }
        if (object.regionCode != null) {
            result
                ..add(r'region_code')
                ..add(serializers.serialize(object.regionCode,
                    specifiedType: const FullType(String)));
        }
        if (object.neighbourhood != null) {
            result
                ..add(r'neighbourhood')
                ..add(serializers.serialize(object.neighbourhood,
                    specifiedType: const FullType(String)));
        }
        if (object.county != null) {
            result
                ..add(r'county')
                ..add(serializers.serialize(object.county,
                    specifiedType: const FullType(String)));
        }
        if (object.macroregion != null) {
            result
                ..add(r'macroregion')
                ..add(serializers.serialize(object.macroregion,
                    specifiedType: const FullType(String)));
        }
        if (object.city != null) {
            result
                ..add(r'city')
                ..add(serializers.serialize(object.city,
                    specifiedType: const FullType(String)));
        }
        if (object.country != null) {
            result
                ..add(r'country')
                ..add(serializers.serialize(object.country,
                    specifiedType: const FullType(String)));
        }
        if (object.countryCode != null) {
            result
                ..add(r'country_code')
                ..add(serializers.serialize(object.countryCode,
                    specifiedType: const FullType(String)));
        }
        if (object.continent != null) {
            result
                ..add(r'continent')
                ..add(serializers.serialize(object.continent,
                    specifiedType: const FullType(String)));
        }
        if (object.postcode != null) {
            result
                ..add(r'postcode')
                ..add(serializers.serialize(object.postcode,
                    specifiedType: const FullType(String)));
        }
        if (object.features != null) {
            result
                ..add(r'features')
                ..add(serializers.serialize(object.features,
                    specifiedType: const FullType(ResponseMapInfoFeatures)));
        }
        return result;
    }

    @override
    ResponseGeocodingProperties deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseGeocodingPropertiesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'label':
                    result.label = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'score':
                    result.score = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'house_number':
                    result.houseNumber = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'street':
                    result.street = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'region':
                    result.region = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'region_code':
                    result.regionCode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'neighbourhood':
                    result.neighbourhood = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'county':
                    result.county = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'macroregion':
                    result.macroregion = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'city':
                    result.city = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'country':
                    result.country = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'country_code':
                    result.countryCode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'continent':
                    result.continent = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'postcode':
                    result.postcode = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'features':
                    result.features.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseMapInfoFeatures)) as ResponseMapInfoFeatures);
                    break;
            }
        }
        return result.build();
    }
}

