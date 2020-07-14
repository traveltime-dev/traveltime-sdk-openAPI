            import 'package:openapi/model/response_transportation_mode.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_distance_breakdown_item.g.dart';

abstract class ResponseDistanceBreakdownItem implements Built<ResponseDistanceBreakdownItem, ResponseDistanceBreakdownItemBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'mode')
    ResponseTransportationMode get mode;
        //enum modeEnum {  car,  parking,  boarding,  walk,  bike,  train,  rail_national,  rail_overground,  rail_underground,  rail_dlr,  bus,  cable_car,  plane,  ferry,  coach,  };
    
        @nullable
    @BuiltValueField(wireName: r'distance')
    int get distance;

    // Boilerplate code needed to wire-up generated code
    ResponseDistanceBreakdownItem._();

    factory ResponseDistanceBreakdownItem([updates(ResponseDistanceBreakdownItemBuilder b)]) = _$ResponseDistanceBreakdownItem;
    static Serializer<ResponseDistanceBreakdownItem> get serializer => _$responseDistanceBreakdownItemSerializer;
}

