import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'request_arrival_time_period.jser.dart';

@Entity()
class RequestArrivalTimePeriod {
  /// The underlying value of this enum member.
  final String value;

  const RequestArrivalTimePeriod._internal(this.value);

  static const RequestArrivalTimePeriod weekdayMorning_} = const RequestArrivalTimePeriod._internal("weekday_morning");
}

class RequestArrivalTimePeriodTypeTransformer extends TypeTransformer<RequestArrivalTimePeriod> {

  @override
  dynamic encode(RequestArrivalTimePeriod data) {
    return data.value;
  }

  @override
  RequestArrivalTimePeriod decode(dynamic data) {
    switch (data) {
      case "weekday_morning": return RequestArrivalTimePeriod.weekdayMorning_};
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

