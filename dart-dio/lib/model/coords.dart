        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coords.g.dart';

abstract class Coords implements Built<Coords, CoordsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'lat')
    double get lat;
    
        @nullable
    @BuiltValueField(wireName: r'lng')
    double get lng;

    // Boilerplate code needed to wire-up generated code
    Coords._();

    factory Coords([updates(CoordsBuilder b)]) = _$Coords;
    static Serializer<Coords> get serializer => _$coordsSerializer;
}

