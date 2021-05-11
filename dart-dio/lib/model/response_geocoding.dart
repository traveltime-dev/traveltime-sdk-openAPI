//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_geocoding_geo_json_feature.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding.g.dart';

abstract class ResponseGeocoding implements Built<ResponseGeocoding, ResponseGeocodingBuilder> {

    @BuiltValueField(wireName: r'type')
    String get type;

    @BuiltValueField(wireName: r'features')
    BuiltList<ResponseGeocodingGeoJsonFeature> get features;

    ResponseGeocoding._();

    static void _initializeBuilder(ResponseGeocodingBuilder b) => b;

    factory ResponseGeocoding([void updates(ResponseGeocodingBuilder b)]) = _$ResponseGeocoding;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseGeocoding> get serializer => _$ResponseGeocodingSerializer();
}

class _$ResponseGeocodingSerializer implements StructuredSerializer<ResponseGeocoding> {

    @override
    final Iterable<Type> types = const [ResponseGeocoding, _$ResponseGeocoding];
    @override
    final String wireName = r'ResponseGeocoding';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseGeocoding object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(String)));
        result
            ..add(r'features')
            ..add(serializers.serialize(object.features,
                specifiedType: const FullType(BuiltList, [FullType(ResponseGeocodingGeoJsonFeature)])));
        return result;
    }

    @override
    ResponseGeocoding deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseGeocodingBuilder();

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
                case r'features':
                    result.features.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseGeocodingGeoJsonFeature)])) as BuiltList<ResponseGeocodingGeoJsonFeature>);
                    break;
            }
        }
        return result.build();
    }
}

