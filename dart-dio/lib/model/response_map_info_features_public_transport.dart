//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_map_info_features_public_transport.g.dart';

abstract class ResponseMapInfoFeaturesPublicTransport implements Built<ResponseMapInfoFeaturesPublicTransport, ResponseMapInfoFeaturesPublicTransportBuilder> {

    @BuiltValueField(wireName: r'date_start')
    DateTime get dateStart;

    @BuiltValueField(wireName: r'date_end')
    DateTime get dateEnd;

    ResponseMapInfoFeaturesPublicTransport._();

    static void _initializeBuilder(ResponseMapInfoFeaturesPublicTransportBuilder b) => b;

    factory ResponseMapInfoFeaturesPublicTransport([void updates(ResponseMapInfoFeaturesPublicTransportBuilder b)]) = _$ResponseMapInfoFeaturesPublicTransport;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseMapInfoFeaturesPublicTransport> get serializer => _$ResponseMapInfoFeaturesPublicTransportSerializer();
}

class _$ResponseMapInfoFeaturesPublicTransportSerializer implements StructuredSerializer<ResponseMapInfoFeaturesPublicTransport> {

    @override
    final Iterable<Type> types = const [ResponseMapInfoFeaturesPublicTransport, _$ResponseMapInfoFeaturesPublicTransport];
    @override
    final String wireName = r'ResponseMapInfoFeaturesPublicTransport';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseMapInfoFeaturesPublicTransport object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'date_start')
            ..add(serializers.serialize(object.dateStart,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'date_end')
            ..add(serializers.serialize(object.dateEnd,
                specifiedType: const FullType(DateTime)));
        return result;
    }

    @override
    ResponseMapInfoFeaturesPublicTransport deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseMapInfoFeaturesPublicTransportBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'date_start':
                    result.dateStart = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'date_end':
                    result.dateEnd = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
            }
        }
        return result.build();
    }
}

