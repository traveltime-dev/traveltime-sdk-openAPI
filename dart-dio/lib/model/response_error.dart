//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

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

    ResponseError._();

    static void _initializeBuilder(ResponseErrorBuilder b) => b;

    factory ResponseError([void updates(ResponseErrorBuilder b)]) = _$ResponseError;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseError> get serializer => _$ResponseErrorSerializer();
}

class _$ResponseErrorSerializer implements StructuredSerializer<ResponseError> {

    @override
    final Iterable<Type> types = const [ResponseError, _$ResponseError];
    @override
    final String wireName = r'ResponseError';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.httpStatus != null) {
            result
                ..add(r'http_status')
                ..add(serializers.serialize(object.httpStatus,
                    specifiedType: const FullType(int)));
        }
        if (object.errorCode != null) {
            result
                ..add(r'error_code')
                ..add(serializers.serialize(object.errorCode,
                    specifiedType: const FullType(int)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.documentationLink != null) {
            result
                ..add(r'documentation_link')
                ..add(serializers.serialize(object.documentationLink,
                    specifiedType: const FullType(String)));
        }
        if (object.additionalInfo != null) {
            result
                ..add(r'additional_info')
                ..add(serializers.serialize(object.additionalInfo,
                    specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])));
        }
        return result;
    }

    @override
    ResponseError deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'http_status':
                    result.httpStatus = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'error_code':
                    result.errorCode = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'documentation_link':
                    result.documentationLink = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'additional_info':
                    result.additionalInfo.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])) as BuiltMap<String, BuiltList<String>>);
                    break;
            }
        }
        return result.build();
    }
}

