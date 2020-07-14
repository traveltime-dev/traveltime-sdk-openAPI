        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_travel_time_statistics.g.dart';

abstract class ResponseTravelTimeStatistics implements Built<ResponseTravelTimeStatistics, ResponseTravelTimeStatisticsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'min')
    int get min;
    
        @nullable
    @BuiltValueField(wireName: r'max')
    int get max;
    
        @nullable
    @BuiltValueField(wireName: r'mean')
    int get mean;
    
        @nullable
    @BuiltValueField(wireName: r'median')
    int get median;

    // Boilerplate code needed to wire-up generated code
    ResponseTravelTimeStatistics._();

    factory ResponseTravelTimeStatistics([updates(ResponseTravelTimeStatisticsBuilder b)]) = _$ResponseTravelTimeStatistics;
    static Serializer<ResponseTravelTimeStatistics> get serializer => _$responseTravelTimeStatisticsSerializer;
}

