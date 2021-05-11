//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:openapi/model/coords.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/model/response_transportation_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_route_part.g.dart';

abstract class ResponseRoutePart implements Built<ResponseRoutePart, ResponseRoutePartBuilder> {

    @BuiltValueField(wireName: r'id')
    String get id;

    @BuiltValueField(wireName: r'type')
    ResponseRoutePartTypeEnum get type;
    // enum typeEnum {  basic,  start_end,  road,  public_transport,  };

    @BuiltValueField(wireName: r'mode')
    ResponseTransportationMode get mode;
    // enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };

    @BuiltValueField(wireName: r'directions')
    String get directions;

    @BuiltValueField(wireName: r'distance')
    int get distance;

    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;

    @BuiltValueField(wireName: r'coords')
    BuiltList<Coords> get coords;

    @nullable
    @BuiltValueField(wireName: r'direction')
    String get direction;

    @nullable
    @BuiltValueField(wireName: r'road')
    String get road;

    @nullable
    @BuiltValueField(wireName: r'turn')
    String get turn;

    @nullable
    @BuiltValueField(wireName: r'line')
    String get line;

    @nullable
    @BuiltValueField(wireName: r'departure_station')
    String get departureStation;

    @nullable
    @BuiltValueField(wireName: r'arrival_station')
    String get arrivalStation;

    @nullable
    @BuiltValueField(wireName: r'departs_at')
    String get departsAt;

    @nullable
    @BuiltValueField(wireName: r'arrives_at')
    String get arrivesAt;

    @nullable
    @BuiltValueField(wireName: r'num_stops')
    int get numStops;

    ResponseRoutePart._();

    static void _initializeBuilder(ResponseRoutePartBuilder b) => b;

    factory ResponseRoutePart([void updates(ResponseRoutePartBuilder b)]) = _$ResponseRoutePart;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResponseRoutePart> get serializer => _$ResponseRoutePartSerializer();
}

class _$ResponseRoutePartSerializer implements StructuredSerializer<ResponseRoutePart> {

    @override
    final Iterable<Type> types = const [ResponseRoutePart, _$ResponseRoutePart];
    @override
    final String wireName = r'ResponseRoutePart';

    @override
    Iterable<Object> serialize(Serializers serializers, ResponseRoutePart object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(ResponseRoutePartTypeEnum)));
        result
            ..add(r'mode')
            ..add(serializers.serialize(object.mode,
                specifiedType: const FullType(ResponseTransportationMode)));
        result
            ..add(r'directions')
            ..add(serializers.serialize(object.directions,
                specifiedType: const FullType(String)));
        result
            ..add(r'distance')
            ..add(serializers.serialize(object.distance,
                specifiedType: const FullType(int)));
        result
            ..add(r'travel_time')
            ..add(serializers.serialize(object.travelTime,
                specifiedType: const FullType(int)));
        result
            ..add(r'coords')
            ..add(serializers.serialize(object.coords,
                specifiedType: const FullType(BuiltList, [FullType(Coords)])));
        if (object.direction != null) {
            result
                ..add(r'direction')
                ..add(serializers.serialize(object.direction,
                    specifiedType: const FullType(String)));
        }
        if (object.road != null) {
            result
                ..add(r'road')
                ..add(serializers.serialize(object.road,
                    specifiedType: const FullType(String)));
        }
        if (object.turn != null) {
            result
                ..add(r'turn')
                ..add(serializers.serialize(object.turn,
                    specifiedType: const FullType(String)));
        }
        if (object.line != null) {
            result
                ..add(r'line')
                ..add(serializers.serialize(object.line,
                    specifiedType: const FullType(String)));
        }
        if (object.departureStation != null) {
            result
                ..add(r'departure_station')
                ..add(serializers.serialize(object.departureStation,
                    specifiedType: const FullType(String)));
        }
        if (object.arrivalStation != null) {
            result
                ..add(r'arrival_station')
                ..add(serializers.serialize(object.arrivalStation,
                    specifiedType: const FullType(String)));
        }
        if (object.departsAt != null) {
            result
                ..add(r'departs_at')
                ..add(serializers.serialize(object.departsAt,
                    specifiedType: const FullType(String)));
        }
        if (object.arrivesAt != null) {
            result
                ..add(r'arrives_at')
                ..add(serializers.serialize(object.arrivesAt,
                    specifiedType: const FullType(String)));
        }
        if (object.numStops != null) {
            result
                ..add(r'num_stops')
                ..add(serializers.serialize(object.numStops,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ResponseRoutePart deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResponseRoutePartBuilder();

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
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(ResponseRoutePartTypeEnum)) as ResponseRoutePartTypeEnum;
                    break;
                case r'mode':
                    result.mode = serializers.deserialize(value,
                        specifiedType: const FullType(ResponseTransportationMode)) as ResponseTransportationMode;
                    break;
                case r'directions':
                    result.directions = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'distance':
                    result.distance = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'travel_time':
                    result.travelTime = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'coords':
                    result.coords.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Coords)])) as BuiltList<Coords>);
                    break;
                case r'direction':
                    result.direction = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'road':
                    result.road = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'turn':
                    result.turn = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'line':
                    result.line = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'departure_station':
                    result.departureStation = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'arrival_station':
                    result.arrivalStation = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'departs_at':
                    result.departsAt = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'arrives_at':
                    result.arrivesAt = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'num_stops':
                    result.numStops = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

class ResponseRoutePartTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'basic')
  static const ResponseRoutePartTypeEnum basic = _$responseRoutePartTypeEnum_basic;
  @BuiltValueEnumConst(wireName: r'start_end')
  static const ResponseRoutePartTypeEnum startEnd = _$responseRoutePartTypeEnum_startEnd;
  @BuiltValueEnumConst(wireName: r'road')
  static const ResponseRoutePartTypeEnum road = _$responseRoutePartTypeEnum_road;
  @BuiltValueEnumConst(wireName: r'public_transport')
  static const ResponseRoutePartTypeEnum publicTransport = _$responseRoutePartTypeEnum_publicTransport;

  static Serializer<ResponseRoutePartTypeEnum> get serializer => _$responseRoutePartTypeEnumSerializer;

  const ResponseRoutePartTypeEnum._(String name): super(name);

  static BuiltSet<ResponseRoutePartTypeEnum> get values => _$responseRoutePartTypeEnumValues;
  static ResponseRoutePartTypeEnum valueOf(String name) => _$responseRoutePartTypeEnumValueOf(name);
}

