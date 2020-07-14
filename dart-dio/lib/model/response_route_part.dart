            import 'package:openapi/model/coords.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/response_transportation_mode.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_route_part.g.dart';

abstract class ResponseRoutePart implements Built<ResponseRoutePart, ResponseRoutePartBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'type')
    ResponseRoutePartType get type;
        //enum typeEnum {  basic,  start_end,  road,  public_transport,  };
    
        @nullable
    @BuiltValueField(wireName: r'mode')
    ResponseTransportationMode get mode;
        //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };
    
        @nullable
    @BuiltValueField(wireName: r'directions')
    String get directions;
    
        @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;
    
        @nullable
    @BuiltValueField(wireName: r'travel_time')
    int get travelTime;
    
        @nullable
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

    // Boilerplate code needed to wire-up generated code
    ResponseRoutePart._();

    factory ResponseRoutePart([updates(ResponseRoutePartBuilder b)]) = _$ResponseRoutePart;
    static Serializer<ResponseRoutePart> get serializer => _$responseRoutePartSerializer;
}

class ResponseRoutePartType extends EnumClass {

  @BuiltValueEnumConst(wireName: "basic")
  static const ResponseRoutePartType basic = _$basic;
  @BuiltValueEnumConst(wireName: "start_end")
  static const ResponseRoutePartType startEnd = _$startEnd;
  @BuiltValueEnumConst(wireName: "road")
  static const ResponseRoutePartType road = _$road;
  @BuiltValueEnumConst(wireName: "public_transport")
  static const ResponseRoutePartType publicTransport = _$publicTransport;

  static Serializer<ResponseRoutePartType> get serializer => _$responseRoutePartTypeSerializer;

  const ResponseRoutePartType._(String name): super(name);

  static BuiltSet<ResponseRoutePartType> get values => _$responseRoutePartTypeValues;
  static ResponseRoutePartType valueOf(String name) => _$responseRoutePartTypeValueOf(name);
}


