//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_geocoding_geometry.g.dart';

abstract class ResponseGeocodingGeometry implements Built<ResponseGeocodingGeometry, ResponseGeocodingGeometryBuilder> {

    @BuiltValueField(wireName: r'type')
    String get type;

    @BuiltValueField(wireName: r'coordinates')
    BuiltList<double> get coordinates;

    ResponseGeocodingGeometry._();

    static void _initializeBuilder(ResponseGeocodingGeometryBuilder b) => b;

    factory ResponseGeocodingGeometry([void updates(ResponseGeocodingGeometryBuilder b)]) = _$ResponseGeocodingGeometry;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseGeocodingGeometry> get serializer => _$ResponseGeocodingGeometrySerializer();
}

class _$ResponseGeocodingGeometrySerializer implements StructuredSerializer<ResponseGeocodingGeometry> {

    @override
    final Iterable<Type> types = const [ResponseGeocodingGeometry, _$ResponseGeocodingGeometry];
    @override
    final String wireName = r'ResponseGeocodingGeometry';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseGeocodingGeometry object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(String)));
        result
            ..add(r'coordinates')
            ..add(serializers.serialize(object.coordinates,
                specifiedType: const FullType(BuiltList, [FullType(double)])));
        return result;
    }

    @override
    ResponseGeocodingGeometry deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseGeocodingGeometryBuilder();

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
                case r'coordinates':
                    result.coordinates.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(double)])) as BuiltList<double>);
                    break;
            }
        }
        return result.build();
    }
}

