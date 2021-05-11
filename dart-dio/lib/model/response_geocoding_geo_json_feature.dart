//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_geocoding_geometry.dart';
import 'package:openapi/model/response_geocoding_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_geo_json_feature.g.dart';

abstract class ResponseGeocodingGeoJsonFeature implements Built<ResponseGeocodingGeoJsonFeature, ResponseGeocodingGeoJsonFeatureBuilder> {

    @BuiltValueField(wireName: r'type')
    String get type;

    @BuiltValueField(wireName: r'geometry')
    ResponseGeocodingGeometry get geometry;

    @BuiltValueField(wireName: r'properties')
    ResponseGeocodingProperties get properties;

    ResponseGeocodingGeoJsonFeature._();

    static void _initializeBuilder(ResponseGeocodingGeoJsonFeatureBuilder b) => b;

    factory ResponseGeocodingGeoJsonFeature([void updates(ResponseGeocodingGeoJsonFeatureBuilder b)]) = _$ResponseGeocodingGeoJsonFeature;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseGeocodingGeoJsonFeature> get serializer => _$ResponseGeocodingGeoJsonFeatureSerializer();
}

class _$ResponseGeocodingGeoJsonFeatureSerializer implements StructuredSerializer<ResponseGeocodingGeoJsonFeature> {

    @override
    final Iterable<Type> types = const [ResponseGeocodingGeoJsonFeature, _$ResponseGeocodingGeoJsonFeature];
    @override
    final String wireName = r'ResponseGeocodingGeoJsonFeature';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseGeocodingGeoJsonFeature object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(String)));
        result
            ..add(r'geometry')
            ..add(serializers.serialize(object.geometry,
                specifiedType: const FullType(ResponseGeocodingGeometry)));
        result
            ..add(r'properties')
            ..add(serializers.serialize(object.properties,
                specifiedType: const FullType(ResponseGeocodingProperties)));
        return result;
    }

    @override
    ResponseGeocodingGeoJsonFeature deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseGeocodingGeoJsonFeatureBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'geometry':
                    result.geometry.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseGeocodingGeometry)) as ResponseGeocodingGeometry);
                    break;
                case r'properties':
                    result.properties.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseGeocodingProperties)) as ResponseGeocodingProperties);
                    break;
            }
        }
        return result.build();
    }
}

