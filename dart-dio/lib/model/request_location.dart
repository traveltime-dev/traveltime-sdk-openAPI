//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/coords.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_location.g.dart';

abstract class RequestLocation implements Built<RequestLocation, RequestLocationBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'coords')
    Coords get coords;

    RequestLocation._();

    static void _initializeBuilder(RequestLocationBuilder b) => b;

    factory RequestLocation([void updates(RequestLocationBuilder b)]) = _$RequestLocation;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestLocation> get serializer => _$RequestLocationSerializer();
}

class _$RequestLocationSerializer implements StructuredSerializer<RequestLocation> {

    @override
    final Iterable<Type> types = const [RequestLocation, _$RequestLocation];
    @override
    final String wireName = r'RequestLocation';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestLocation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'coords')
            ..add(serializers.serialize(object.coords,
                specifiedType: const FullType(Coords)));
        return result;
    }

    @override
    RequestLocation deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestLocationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'coords':
                    result.coords.replace(serializers.deserialize(value,
                        specifiedType: const FullType(Coords)) as Coords);
                    break;
            }
        }
        return result.build();
    }
}

