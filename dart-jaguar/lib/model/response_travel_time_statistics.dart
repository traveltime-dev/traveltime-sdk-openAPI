import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'response_travel_time_statistics.jser.dart';

class ResponseTravelTimeStatistics {
  
  @Alias('min')
  final int min;
  
  @Alias('max')
  final int max;
  
  @Alias('mean')
  final int mean;
  
  @Alias('median')
  final int median;
  

  ResponseTravelTimeStatistics(
    

{
    
     this.min = null,  
     this.max = null,  
     this.mean = null,  
     this.median = null 
    }
  );

  @override
  String toString() {
    return 'ResponseTravelTimeStatistics[min=$min, max=$max, mean=$mean, median=$median, ]';
  }
}

@GenSerializer()
class ResponseTravelTimeStatisticsSerializer extends Serializer<ResponseTravelTimeStatistics> with _$ResponseTravelTimeStatisticsSerializer {

}
