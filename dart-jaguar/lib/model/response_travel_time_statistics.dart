import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'response_travel_time_statistics.jser.dart';

class ResponseTravelTimeStatistics {
  
  @Alias('min', isNullable: false,  )
  final int min;
  
  @Alias('max', isNullable: false,  )
  final int max;
  
  @Alias('mean', isNullable: false,  )
  final int mean;
  
  @Alias('median', isNullable: false,  )
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

@GenSerializer(nullableFields: true)
class ResponseTravelTimeStatisticsSerializer extends Serializer<ResponseTravelTimeStatistics> with _$ResponseTravelTimeStatisticsSerializer {

}

