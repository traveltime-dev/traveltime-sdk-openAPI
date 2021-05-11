//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_supported_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_supported_locations.g.dart';

abstract class ResponseSupportedLocations implements Built<ResponseSupportedLocations, ResponseSupportedLocationsBuilder> {

    @BuiltValueField(wireName: r'locations')
    BuiltList<ResponseSupportedLocation> get locations;

    @BuiltValueField(wireName: r'unsupported_locations')
    BuiltList<String> get unsupportedLocations;

    ResponseSupportedLocations._();

    static void _initializeBuilder(ResponseSupportedLocationsBuilder b) => b;

    factory ResponseSupportedLocations([void updates(ResponseSupportedLocationsBuilder b)]) = _$ResponseSupportedLocations;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseSupportedLocations> get serializer => _$ResponseSupportedLocationsSerializer();
}

class _$ResponseSupportedLocationsSerializer implements StructuredSerializer<ResponseSupportedLocations> {

    @override
    final Iterable<Type> types = const [ResponseSupportedLocations, _$ResponseSupportedLocations];
    @override
    final String wireName = r'ResponseSupportedLocations';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseSupportedLocations object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'locations')
            ..add(serializers.serialize(object.locations,
                specifiedType: const FullType(BuiltList, [FullType(ResponseSupportedLocation)])));
        result
            ..add(r'unsupported_locations')
            ..add(serializers.serialize(object.unsupportedLocations,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    ResponseSupportedLocations deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseSupportedLocationsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'locations':
                    result.locations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResponseSupportedLocation)])) as BuiltList<ResponseSupportedLocation>);
                    break;
                case r'unsupported_locations':
                    result.unsupportedLocations.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
            }
        }
        return result.build();
    }
}

