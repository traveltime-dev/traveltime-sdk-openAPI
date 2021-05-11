//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/request_time_filter_fast_arrival_many_to_one_search.dart';
import 'package:openapi/model/request_time_filter_fast_arrival_one_to_many_search.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_time_filter_fast_arrival_searches.g.dart';

abstract class RequestTimeFilterFastArrivalSearches implements Built<RequestTimeFilterFastArrivalSearches, RequestTimeFilterFastArrivalSearchesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'many_to_one')
    BuiltList<RequestTimeFilterFastArrivalManyToOneSearch> get manyToOne;

    @nullable
    @BuiltValueField(wireName: r'one_to_many')
    BuiltList<RequestTimeFilterFastArrivalOneToManySearch> get oneToMany;

    RequestTimeFilterFastArrivalSearches._();

    static void _initializeBuilder(RequestTimeFilterFastArrivalSearchesBuilder b) => b;

    factory RequestTimeFilterFastArrivalSearches([void updates(RequestTimeFilterFastArrivalSearchesBuilder b)]) = _$RequestTimeFilterFastArrivalSearches;

    @BuiltValueSerializer(custom: true)
    static Serializer<RequestTimeFilterFastArrivalSearches> get serializer => _$RequestTimeFilterFastArrivalSearchesSerializer();
}

class _$RequestTimeFilterFastArrivalSearchesSerializer implements StructuredSerializer<RequestTimeFilterFastArrivalSearches> {

    @override
    final Iterable<Type> types = const [RequestTimeFilterFastArrivalSearches, _$RequestTimeFilterFastArrivalSearches];
    @override
    final String wireName = r'RequestTimeFilterFastArrivalSearches';

    @override
    Iterable<Object> serialize(Serializers serializers, RequestTimeFilterFastArrivalSearches object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.manyToOne != null) {
            result
                ..add(r'many_to_one')
                ..add(serializers.serialize(object.manyToOne,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastArrivalManyToOneSearch)])));
        }
        if (object.oneToMany != null) {
            result
                ..add(r'one_to_many')
                ..add(serializers.serialize(object.oneToMany,
                    specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastArrivalOneToManySearch)])));
        }
        return result;
    }

    @override
    RequestTimeFilterFastArrivalSearches deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RequestTimeFilterFastArrivalSearchesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'many_to_one':
                    result.manyToOne.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastArrivalManyToOneSearch)])) as BuiltList<RequestTimeFilterFastArrivalManyToOneSearch>);
                    break;
                case r'one_to_many':
                    result.oneToMany.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(RequestTimeFilterFastArrivalOneToManySearch)])) as BuiltList<RequestTimeFilterFastArrivalOneToManySearch>);
                    break;
            }
        }
        return result.build();
    }
}

