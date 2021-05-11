//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/response_map_info_features_public_transport.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_features.g.dart';

abstract class ResponseMapInfoFeatures implements Built<ResponseMapInfoFeatures, ResponseMapInfoFeaturesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'public_transport')
    ResponseMapInfoFeaturesPublicTransport get publicTransport;

    @BuiltValueField(wireName: r'fares')
    bool get fares;

    @BuiltValueField(wireName: r'postcodes')
    bool get postcodes;

    ResponseMapInfoFeatures._();

    static void _initializeBuilder(ResponseMapInfoFeaturesBuilder b) => b;

    factory ResponseMapInfoFeatures([void updates(ResponseMapInfoFeaturesBuilder b)]) = _$ResponseMapInfoFeatures;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseMapInfoFeatures> get serializer => _$ResponseMapInfoFeaturesSerializer();
}

class _$ResponseMapInfoFeaturesSerializer implements StructuredSerializer<ResponseMapInfoFeatures> {

    @override
    final Iterable<Type> types = const [ResponseMapInfoFeatures, _$ResponseMapInfoFeatures];
    @override
    final String wireName = r'ResponseMapInfoFeatures';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseMapInfoFeatures object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.publicTransport != null) {
            result
                ..add(r'public_transport')
                ..add(serializers.serialize(object.publicTransport,
                    specifiedType: const FullType(ResponseMapInfoFeaturesPublicTransport)));
        }
        result
            ..add(r'fares')
            ..add(serializers.serialize(object.fares,
                specifiedType: const FullType(bool)));
        result
            ..add(r'postcodes')
            ..add(serializers.serialize(object.postcodes,
                specifiedType: const FullType(bool)));
        return result;
    }

    @override
    ResponseMapInfoFeatures deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseMapInfoFeaturesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'public_transport':
                    result.publicTransport.replace(serializers.deserialize(value,
                        specifiedType: const FullType(ResponseMapInfoFeaturesPublicTransport)) as ResponseMapInfoFeaturesPublicTransport);
                    break;
                case r'fares':
                    result.fares = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'postcodes':
                    result.postcodes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

